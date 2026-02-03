# OpenClaw Monitor Dashboard

A real-time monitoring dashboard for OpenClaw that displays system status, cron jobs, resources, and activity in one place.

## Features

### 📊 System Overview
- Gateway health status (up/down)
- Active sessions count
- CPU, Memory, and Disk usage with progress bars

### ⏰ Cron Jobs
- List all scheduled cron jobs
- Show next run time for each
- Display last run status (success/failed)
- Schedule information

### 🗂️ Tools Roadmap
- Progress visualization
- Completed vs pending tools
- Next task indicator

### 📁 Git Status
- Workspace repository status
- one4health-website repository status
- Last commit information

### 📝 Activity Feed
- Real-time event log
- Timestamp and description
 Auto-populated with dashboard actions

### ⚠️ Alerts & Warnings
- Failed job alerts
- System threshold warnings
- Error notifications

### 🔧 Controls
- Trigger manual heartbeat
- Restart OpenClaw gateway
- View system logs

### 🌐 Website Status
- One4Health website health
- HTTP status code

## Usage

### Method 1: Direct File Open
Simply open `index.html` in any modern web browser:
```
start monitor-dashboard/index.html
```

### Method 2: Simple HTTP Server (Recommended)
For better performance with API calls:

```powershell
# From workspace directory
cd monitor-dashboard
python -m http.server 8080
```

Then open: http://localhost:8080

### Method 3: Using the batch script
```
C:\Users\Karan\.openclaw\workspace\monitor-dashboard\start-dashboard.bat
```

## Dashboard Sections

### Auto-refresh
The dashboard automatically refreshes every 30 seconds. You can also manually refresh with the "Refresh Now" button.

### Color Indicators
- 🟢 **Green** = Online / OK / Healthy
- 🟡 **Yellow** = Warning / High usage
- 🔴 **Red** = Offline / Failed / Critical

### Resource Thresholds
- Normal: < 60%
- Warning: 60-80%
- Critical: > 80%

## API Endpoints Used

The dashboard connects to OpenClaw Gateway at `http://127.0.0.1:18789`:
- `GET /healthz` - Gateway health check
- `GET /api/cron/list` - List cron jobs
- `GET /api/sessions/list` - List active sessions
- `POST /api/gateway/restart` - Restart gateway

## Customization

### Change Refresh Interval
Edit line 266 in `index.html`:
```javascript
const REFRESH_INTERVAL = 30000; // Change to desired milliseconds
```

### Modify Dashboard Layout
The CSS uses CSS Grid - edit the `.dashboard-grid` class in `<style>` section.

### Add Custom Alerts
Extend the `alertList` div in the HTML and populate via JavaScript.

## Troubleshooting

### Gateway shows as offline
- Check if OpenClaw Gateway is running: `openclaw gateway status`
- Verify port 18789 is accessible

### Cron jobs not loading
- Check gateway is running
- Verify API endpoint is accessible

### Auto-refresh not working
- Check browser console for errors
- Verify CORS settings if using HTTP server
- Try refreshing manually with the button

## Browser Requirements

- Modern browser with ES6 support (Chrome, Firefox, Edge, Safari)
- JavaScript enabled
- No special plugins required

## Location

Dashboard files are located at:
```
C:\Users\Karan\.openclaw\workspace\monitor-dashboard\
```

---

Last updated: 2026-02-03