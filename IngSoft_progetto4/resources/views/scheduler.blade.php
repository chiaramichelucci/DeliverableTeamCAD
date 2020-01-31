<!DOCTYPE html>
<head>
   <meta http-equiv="Content-type" content="text/html; charset=utf-8">
 
   <script src="https://cdn.dhtmlx.com/scheduler/edge/dhtmlxscheduler.js"></script>
   <link href="https://cdn.dhtmlx.com/scheduler/edge/dhtmlxscheduler.css"
        rel="stylesheet">
 
   <style type="text/css">

       html, body{
           height:100%;
           padding:0px;
           margin:0px;
           overflow: hidden;
       }

       .button {
            background-color: white;
            color: black;
            border: 2px solid gray;
            padding: 7px 7px 7px 7px;
            float: center;
            
        }

       .listaProfdiv{
            background-color: blue;
            height: 30px;
            width: 100px;
            position:relative;
            margin-right: 100px;
            margin-left: 300px;

       }


   </style>
</head>
<body>
<div id="scheduler_here" class="dhx_cal_container" style='width:100%; height:100%;'>
   <div class="dhx_cal_navline">
       <div class="dhx_cal_prev_button">&nbsp;</div>
       <div class="dhx_cal_next_button">&nbsp;</div>
       <div class="dhx_cal_today_button"></div>
       <div class="dhx_cal_date"></div>
       <div class="listaProfdiv">
           <!--<input class="button" type="button" value="prof">-->
           <button class="button" onclick="window.location='{{ url("api/docenti") }}'">Lista Professori</button>
       </div>
       <div class="dhx_cal_tab" name="day_tab"></div>
       <div class="dhx_cal_tab" name="week_tab"></div>
       <div class="dhx_cal_tab" name="month_tab"></div>
   </div>
   <div class="dhx_cal_header"></div>
   <div class="dhx_cal_data"></div>
</div>
<script type="text/javascript">

scheduler.config.date_format = "%Y-%m-%d %H:%i:%s";
scheduler.setLoadMode("day");  
scheduler.init("scheduler_here", new Date(), "week");
 
scheduler.load("/api/events", "json"); 
var dp = new dataProcessor("/api/events"); 
dp.init(scheduler);
dp.setTransactionMode("REST");

</script>
</body>