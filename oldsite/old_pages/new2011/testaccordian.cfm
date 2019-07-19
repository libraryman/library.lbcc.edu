<style type="text/css">
#toggle-view {
    list-style:none;    
    font-family:arial;
    font-size:11px;
    margin:0;
    padding:0;
    width:300px;
}
 
    #toggle-view li {
        margin:10px;
        border-bottom:1px solid #ccc;
        position:relative;
        cursor:pointer;
    }
     
    #toggle-view h3 {
        margin:0;
        font-size:14px;
    }
 
    #toggle-view span {
        position:absolute;
        right:5px; top:0;
        color:#ccc;
        font-size:13px;
    }
     
    #toggle-view .panel {
        margin:5px 0;
        display:none;
    }  
</style>

<script type="text/javascript">
$(document).ready(function () {
     
    $('#toggle-view li').click(function () {
 
        var text = $(this).children('div.panel');
 
         if (text.is(':hidden')) {
            text.slideDown('200');
            $(this).children('span').html('-');     
        } else {
            text.slideUp('200');
            $(this).children('span').html('+');     
        }
         
    });
 
});
</script>
<body>
<ul id="toggle-view">
    <li>
        <h3>Title 1</h3>
        <span>+</span>
        <div class="panel">
            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi commodo, ipsum sed pharetra gravida, orci magna rhoncus neque, id pulvinar odio lorem non turpis. Nullam sit amet enim.</p>
        </div>
    </li>
    <li>
        <h3>Title 2</h3>
        <span>+</span>
        <div class="panel">
            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi commodo, ipsum sed pharetra gravida, orci magna rhoncus neque, id pulvinar odio lorem non turpis. Nullam sit amet enim.</p>
        </div>
    </li>
    <li>
        <h3>Title 3</h3>
        <span>+</span>
        <div class="panel">
            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi commodo, ipsum sed pharetra gravida, orci magna rhoncus neque, id pulvinar odio lorem non turpis. Nullam sit amet enim.</p>
        </div>
    </li>
</ul>
</body>