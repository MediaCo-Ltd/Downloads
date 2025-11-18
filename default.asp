<%@ Language=VBScript %>
<!DOCTYPE html>
<html>
<head>
    <title>MediaCo Downloads</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            max-width: 900px;
            margin: 50px auto;
            padding: 20px;
            background-color: #f5f5f5;
        }
        h1 {
            color: #333;
            border-bottom: 2px solid #007bff;
            padding-bottom: 10px;
        }
        .download-section {
            background: white;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
            margin-top: 20px;
        }
        .app-item {
            padding: 15px;
            margin: 10px 0;
            border: 1px solid #ddd;
            border-radius: 3px;
            background-color: #fafafa;
        }
        .app-name {
            font-size: 1.2em;
            font-weight: bold;
            color: #007bff;
            margin-bottom: 5px;
        }
        .app-description {
            color: #666;
            margin-bottom: 10px;
        }
        .download-link {
            display: inline-block;
            padding: 8px 15px;
            background-color: #007bff;
            color: white;
            text-decoration: none;
            border-radius: 3px;
        }
        .download-link:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <h1>MediaCo Application Downloads</h1>

    <div class="download-section">
        <h2>Available Applications</h2>

        <div class="app-item">
            <div class="app-name">Add Order Reference</div>
            <div class="app-description">Add reference numbers to existing orders</div>
            <a href="download.asp?app=1" class="download-link">Download</a>
        </div>

        <div class="app-item">
            <div class="app-name">Courier Labels</div>
            <div class="app-description">Generate and print courier shipping labels</div>
            <a href="download.asp?app=2" class="download-link">Download</a>
        </div>

        <div class="app-item">
            <div class="app-name">DPD Check</div>
            <div class="app-description">Verify and validate DPD shipment information</div>
            <a href="download.asp?app=3" class="download-link">Download</a>
        </div>

        <div class="app-item">
            <div class="app-name">Date Folders</div>
            <div class="app-description">Organize files and folders by date</div>
            <a href="download.asp?app=4" class="download-link">Download</a>
        </div>

        <div class="app-item">
            <div class="app-name">HH Export</div>
            <div class="app-description">Export data to HH format</div>
            <a href="download.asp?app=5" class="download-link">Download</a>
        </div>

        <div class="app-item">
            <div class="app-name">HS Report Email</div>
            <div class="app-description">Generate and email HS reports</div>
            <a href="download.asp?app=6" class="download-link">Download</a>
        </div>

        <div class="app-item">
            <div class="app-name">Indoor Redo</div>
            <div class="app-description">Process indoor redo requests</div>
            <a href="download.asp?app=7" class="download-link">Download</a>
        </div>

        <div class="app-item">
            <div class="app-name">Invoices</div>
            <div class="app-description">Generate and manage invoices</div>
            <a href="download.asp?app=8" class="download-link">Download</a>
        </div>

        <div class="app-item">
            <div class="app-name">Mark Export Web</div>
            <div class="app-description">Export mark data for web display</div>
            <a href="download.asp?app=9" class="download-link">Download</a>
        </div>

        <div class="app-item">
            <div class="app-name">MDL Artwork Email</div>
            <div class="app-description">Send artwork files via email for MDL orders</div>
            <a href="download.asp?app=10" class="download-link">Download</a>
        </div>

        <div class="app-item">
            <div class="app-name">MDL Tracker</div>
            <div class="app-description">Track MDL order progress and status</div>
            <a href="download.asp?app=11" class="download-link">Download</a>
        </div>

        <div class="app-item">
            <div class="app-name">MDL Tracker Email</div>
            <div class="app-description">Send tracker emails for MDL orders</div>
            <a href="download.asp?app=12" class="download-link">Download</a>
        </div>

        <div class="app-item">
            <div class="app-name">MGS Production Email</div>
            <div class="app-description">Send production emails for MGS orders</div>
            <a href="download.asp?app=13" class="download-link">Download</a>
        </div>

        <div class="app-item">
            <div class="app-name">MPL Export Email</div>
            <div class="app-description">Export and email MPL data</div>
            <a href="download.asp?app=14" class="download-link">Download</a>
        </div>

        <div class="app-item">
            <div class="app-name">MPL Tracker</div>
            <div class="app-description">Track MPL order progress and status</div>
            <a href="download.asp?app=15" class="download-link">Download</a>
        </div>

        <div class="app-item">
            <div class="app-name">MPL Tracker Email</div>
            <div class="app-description">Send tracker emails for MPL orders</div>
            <a href="download.asp?app=16" class="download-link">Download</a>
        </div>

        <div class="app-item">
            <div class="app-name">Orders Today</div>
            <div class="app-description">View and manage today's orders</div>
            <a href="download.asp?app=17" class="download-link">Download</a>
        </div>

        <div class="app-item">
            <div class="app-name">Outdoor Printed</div>
            <div class="app-description">Track outdoor printed materials</div>
            <a href="download.asp?app=18" class="download-link">Download</a>
        </div>

        <div class="app-item">
            <div class="app-name">Outdoor Spec Sheets</div>
            <div class="app-description">Generate outdoor specification sheets</div>
            <a href="download.asp?app=19" class="download-link">Download</a>
        </div>

        <div class="app-item">
            <div class="app-name">Pricing</div>
            <div class="app-description">Manage and calculate product pricing</div>
            <a href="download.asp?app=20" class="download-link">Download</a>
        </div>

        <div class="app-item">
            <div class="app-name">Redo Email</div>
            <div class="app-description">Send redo notification emails</div>
            <a href="download.asp?app=21" class="download-link">Download</a>
        </div>

        <div class="app-item">
            <div class="app-name">Sales Email</div>
            <div class="app-description">Send sales-related emails</div>
            <a href="download.asp?app=22" class="download-link">Download</a>
        </div>

        <div class="app-item">
            <div class="app-name">Scheduled Tasks</div>
            <div class="app-description">Manage and configure scheduled tasks</div>
            <a href="download.asp?app=23" class="download-link">Download</a>
        </div>

        <div class="app-item">
            <div class="app-name">Stock</div>
            <div class="app-description">Manage inventory and stock levels</div>
            <a href="download.asp?app=24" class="download-link">Download</a>
        </div>

        <div class="app-item">
            <div class="app-name">Stock Report</div>
            <div class="app-description">Generate stock reports and analytics</div>
            <a href="download.asp?app=25" class="download-link">Download</a>
        </div>

        <div class="app-item">
            <div class="app-name">Stock SQL</div>
            <div class="app-description">SQL-based stock management interface</div>
            <a href="download.asp?app=26" class="download-link">Download</a>
        </div>

        <div class="app-item">
            <div class="app-name">Tag Printer</div>
            <div class="app-description">Print product tags and labels</div>
            <a href="download.asp?app=27" class="download-link">Download</a>
        </div>

        <div class="app-item">
            <div class="app-name">YTD</div>
            <div class="app-description">Year-to-date reporting and analytics</div>
            <a href="download.asp?app=28" class="download-link">Download</a>
        </div>
    </div>

    <p style="margin-top: 30px; text-align: center; color: #666; font-size: 0.9em;">
        &copy; <%= Year(Now) %> MediaCo Ltd. All rights reserved.
    </p>
</body>
</html>
