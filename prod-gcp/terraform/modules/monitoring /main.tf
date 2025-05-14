resource "google_logging_project_sink" "log_sink" {
  name                   = var.sink_name
  project                = var.project_id
  destination            = var.destination
  filter                 = var.filter
  unique_writer_identity = true
}

resource "google_monitoring_alert_policy" "cpu_alert" {
  display_name = "High CPU Usage"
  combiner     = "OR"

  conditions {
    display_name = "CPU over 80%"
    condition_threshold {
      filter          = "metric.type=\"run.googleapis.com/container/cpu/utilizations\""
      duration        = "60s"
      comparison      = "COMPARISON_GT"
      threshold_value = 0.8

      aggregations {
        alignment_period   = "60s"
        per_series_aligner = "ALIGN_MEAN"
      }
    }
  }

  notification_channels = var.notification_channels
  enabled               = true
}

resource "google_monitoring_alert_policy" "ram_alert" {
  display_name = "High RAM Usage"
  combiner     = "OR"

  conditions {
    display_name = "RAM over 80%"
    condition_threshold {
      filter          = "metric.type=\"run.googleapis.com/container/memory/utilizations\""
      duration        = "60s"
      comparison      = "COMPARISON_GT"
      threshold_value = 0.8

      aggregations {
        alignment_period   = "60s"
        per_series_aligner = "ALIGN_MEAN"
      }
    }
  }

  notification_channels = var.notification_channels
  enabled               = true
}

resource "google_monitoring_alert_policy" "sql_storage_alert" {
  display_name = "Cloud SQL Storage > 8Go"
  combiner     = "OR"

  conditions {
    display_name = "Cloud SQL disk usage > 8Go"
    condition_threshold {
      filter          = "metric.type=\"cloudsql.googleapis.com/database/disk/bytes_used\""
      duration        = "60s"
      comparison      = "COMPARISON_GT"
      threshold_value = 8589934592 # 8 Go en bytes

      aggregations {
        alignment_period   = "60s"
        per_series_aligner = "ALIGN_MEAN"
        group_by_fields    = ["resource.label.database_id"]
      }
    }
  }

  notification_channels = var.notification_channels
  enabled               = true
}

resource "google_monitoring_alert_policy" "redis_memory_alert" {
  display_name = "Redis Memory Usage > 80%"
  combiner     = "OR"

  conditions {
    display_name = "Redis memory over 80%"
    condition_threshold {
      filter          = "metric.type=\"redis.googleapis.com/stats/memory/usage_ratio\""
      duration        = "60s"
      comparison      = "COMPARISON_GT"
      threshold_value = 0.8

      aggregations {
        alignment_period   = "60s"
        per_series_aligner = "ALIGN_MEAN"
      }
    }
  }

  notification_channels = var.notification_channels
  enabled               = true
}
