package com.example.misk

import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import android.app.AlarmManager
import android.app.PendingIntent
import android.content.Intent
import android.content.Context

class MainActivity : FlutterActivity() {
    private val CHANNEL = "bridgeBetweenFlutterAndAndroid"

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL)
            .setMethodCallHandler { call, result ->
                when (call.method) {
                    "scheduleNotifications" -> {
                        val id = call.argument<Int>("id") ?: 0
                        val title = call.argument<String>("title") ?: "Prayer"
                        val body = call.argument<String>("body") ?: ""
                        val time = call.argument<Long>("time") ?: 0L

                        scheduleNotification(id, title, body, time)
                        result.success(null)
                    }
                    else -> result.notImplemented()
                }
            }
    }

    private fun scheduleNotification(id: Int, title: String, body: String, time: Long) {
        val intent = Intent(this, NotificationReceiver::class.java).apply {
            putExtra("title", title)
            putExtra("body", body)
        }

        val pendingIntent = PendingIntent.getBroadcast(
            this,
            id,
            intent,
            PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE
        )

        val alarmManager = getSystemService(Context.ALARM_SERVICE) as AlarmManager
        alarmManager.setExactAndAllowWhileIdle(
            AlarmManager.RTC_WAKEUP,
            time,
            pendingIntent
        )
    }
}
