var popUpMenuScrollbarSize=20;
var popUpMenus=new Array();

function PopUpMenuItem(text,link) {
this.text=text;
this.link=link;
this.isSeparator=false;
this.subMenu=null;
}

function PopUpMenu(width){
this.width=width;
this.height=0;
this.items=new Array();
this.created=false;
this.border=2;
this.padding=4;
this.spSize=2;
this.spPadding=1;
this.fgColor="000000";
this.bgColor="#c0c0c0";
this.hiFgColor="#ffffff";
this.hiBgColor="000080";
this.bdHiColor="#e0e0e0";
this.bdShColor="#000000";
this.spHiColor="#e0e0e0";
this.spShColor="#808080";
this.fontFamily="Verdana,MS Sans Serif,Arial,Helvetica,sans-serif";
this.fontStyle="plain";
this.fontWeight="normal";
this.fontSize="8pt";
this.noneImage="transparent.gif";
this.normImage="default_norm.gif";
this.highImage="default_high.gif";
this.imageWidth=8;
this.imageHeight=12;
this.left=0;
this.top=0;
this.right=this.width;
this.bottom=this.height;
this.parentMenu=null;
this.openChild=null;
this.offsetX=0;
this.offsetY=0;
this.isStatic=false;
this.isOpen=false;
this.isSubmenu=false;
this.setSizes=popUpMenuSetSizes;
this.setColors=popUpMenuSetColors;
this.setFont=popUpMenuSetFont;
this.setImages=popUpMenuSetImages;
this.addItem=popUpMenuAddItem;
this.addSeparator=popUpMenuAddSeparator;
this.addSubmenu=popUpMenuAddSubmenu;
this.copyAttributes=popUpMenuCopyAttributes;
this.create=popUpMenuCreate;
this.open=popUpMenuOpen;
this.close=popUpMenuClose;
this.setStatic=popUpMenuSetStatic;
this.moveTo=popUpMenuMoveTo;
this.moveBy=popUpMenuMoveBy;
this.getzIndex=popUpMenuGetzIndex;
this.setzIndex=popUpMenuSetzIndex;
this.index=popUpMenus.length;
popUpMenus[this.index]=this;
}

function popUpMenuSetSizes(border,padding,spSize,spPadding){
if(!this.created){
this.border=border;
this.padding=padding;
this.spSize=spSize;
this.spPadding=spPadding;
}
}

function popUpMenuSetColors(fgColor,bgColor,hiFgColor,hiBgColor,bdHiColor,bdShColor,spHiColor,spShColor){
if(!this.created){
this.fgColor=fgColor;
this.bgColor=bgColor;
this.hiFgColor=hiFgColor;
this.hiBgColor=hiBgColor;
this.bdHiColor=bdHiColor;
this.bdShColor=bdShColor;
this.spHiColor=spHiColor;
this.spShColor=spShColor;
}
}

function popUpMenuSetFont(family,style,weight,size){
if(!this.created){
this.fontFamily=family;
this.fontStyle=style;
this.fontWeight=weight;
this.fontSize=size;
}
}

function popUpMenuSetImages(none,norm,high,width,height){
if(!this.created){
this.noneImage=none;
this.normImage=norm;
this.highImage=high;
this.imageWidth=width;
this.imageHeight=height;
}
}

function popUpMenuAddItem(item){
if(!this.created)
this.items[this.items.length]=item;
}

function popUpMenuAddSeparator(){
if(!this.created){
this.addItem(new PopUpMenuItem("",""));
this.items[this.items.length-1].isSeparator=true;
}
}

function popUpMenuAddSubmenu(item,menu){
if(!this.created&&!menu.isSubmenu){
item.subMenu=menu;
this.items[this.items.length]=item;
menu.parentMenu=this;
menu.isSubmenu=true;
}
}

function popUpMenuCopyAttributes(menu){
if(!this.created&&menu!=null){
this.border=menu.border;
this.padding=menu.padding;
this.spSize=menu.spSize;
this.spPadding=menu.spPadding;
this.fgColor=menu.fgColor;
this.bgColor=menu.bgColor;
this.hiFgColor=menu.hiFgColor;
this.hiBgColor=menu.hiBgColor;
this.bdHiColor=menu.bdHiColor;
this.bdShColor=menu.bdShColor;
this.spHiColor=menu.spHiColor;
this.spShColor=menu.spShColor;
this.fontFamily=menu.fontFamily;
this.fontStyle=menu.fontStyle;
this.fontWeight=menu.fontWeight;
this.fontSize=menu.fontSize;
this.noneImage=menu.noneImage;
this.normImage=menu.normImage;
this.highImage=menu.highImage;
this.imageWidth=menu.imageWidth;
this.imageHeight=menu.imageHeight;
}
}

function popUpMenuCreate(){
var hasSubmenus;
var norm,high,end1,end2,img1,img2,sep;
var text;
var noimg,imgsrc;
var width,height;
var str;var x,y;
var i;
var bevelLayers;
if(!isMinNS4&&!isMinIE4)
return;
if(this.created)
return;
window.status=" Building menu...";
hasSubmenus=false;
for(i=0;i<this.items.length;i++)
if(this.items[i].subMenu!=null)
hasSubmenus=true;
norm='<table border=0 cellpadding='+this.padding+' cellspacing=0 width="100%"><tr valign=top><td><span style="color:'+this.fgColor+';font-family:'+this.fontFamily+';font-size:'+this.fontSize+';font-style:'+this.fontStyle+';font-weight:'+this.fontWeight+';">';high='<table border=0 cellpadding='+this.padding+' cellspacing=0 width="100%"><tr valign=top><td><span style="color:'+this.hiFgColor+';font-family:'+this.fontFamily+';font-size:'+this.fontSize+';font-style:'+this.fontStyle+';font-weight:'+this.fontWeight+';">';end1='</span></td>';end2='</tr></table>';img1='';img2='';noimg='';if(hasSubmenus){img1='<td align=right><img border=0 hspace=0 vspace=0 src="';img2='" width='+this.imageWidth+' height='+this.imageHeight+'></td>';noimg=this.noneImage;}sep='<table border=0 cellpadding='+this.spPadding+' cellspacing=0 width="100%"><tr><td align=center><table border=0 cellpadding=0 cellspacing=0 width="100%"><tr bgcolor="'+this.spShColor+'"><td><img border=0 hspace=0 vspace=0 src="'+this.noneImage+'" width=1 height='+(this.spSize-Math.round(this.spSize/2))+'></td></tr>';if(this.spSize-Math.round(this.spSize/2)>0)sep+='<tr bgcolor="'+this.spHiColor+'"><td><img border=0 hspace=0 vspace=0 src="'+this.noneImage+'" width=1 height='+Math.round(this.spSize/2)+'></td></tr>';sep+='</table></td></tr></table>';
str="";
if(isMinNS4){
this.baseLayer=new Layer(this.width);
setBgColor(this.baseLayer,this.bdShColor);
}
bevelLayers=new Array();
if(isMinNS4)
for(i=0;i<this.border;i++){
bevelLayers[bevelLayers.length]=new Layer(this.width,this.baseLayer);
bevelLayers[bevelLayers.length-1].visibility="inherit";
bevelLayers[bevelLayers.length]=new Layer(this.width,this.baseLayer);
bevelLayers[bevelLayers.length-1].visibility="inherit";
}
if(isMinIE4)
for(i=0;i<this.border;i++)
str+='<div id="popUpMenu'+this.index+'_bevel'+(2*i)+'" style="position:absolute; width:'+this.width+'px; height:100%;"></div>\n<div id="popUpMenu'+this.index+'_bevel'+(2*i+1)+'" style="position:absolute; width:'+this.width+'px; height:100%;"></div>\n';
width=this.width-2*this.border;
for(i=0;i<this.items.length;i++){
if(this.items[i].subMenu==null)
imgsrc=noimg;
else 
imgsrc=this.normImage;
if(this.items[i].isSeparator)
text=sep;
else text=norm+this.items[i].text+end1+img1+imgsrc+img2+end2;
if(isMinNS4){
this.items[i].normLayer=new Layer(width,this.baseLayer);
this.items[i].normLayer.document.open();
this.items[i].normLayer.document.write(text);
this.items[i].normLayer.document.close();
this.items[i].normLayer.visibility="inherit";
setBgColor(this.items[i].normLayer,this.bgColor);
}
if(isMinIE4)
str+='<div id="popUpMenu'+this.index+'_norm'+i+'" style="position:absolute; background-color:'+this.bgColor+'; width:'+width+'px;">'+text+'</div>\n';
if(this.items[i].subMenu==null)
imgsrc=noimg;
else 
imgsrc=this.highImage;
if(this.items[i].isSeparator)
text=sep;
else 
text=high+this.items[i].text+end1+img1+imgsrc+img2+end2;
if(isMinNS4){
this.items[i].highLayer=new Layer(width,this.baseLayer);
this.items[i].highLayer.document.open();
this.items[i].normLayer.document.write(text);
this.items[i].highLayer.document.close();
this.items[i].highLayer.visibility="hide";
setBgColor(this.items[i].highLayer,this.hiBgColor);
}
if(isMinIE4)
str+='<div id="popUpMenu'+this.index+'_high'+i+'" style="position:absolute; background-color:'+this.hiBgColor+'; width:'+width+'px; visibility:hidden;">'+text+'</div>\n';
if(isMinNS4){
this.items[i].dmmyLayer=new Layer(width,this.baseLayer);
this.items[i].dmmyLayer.visibility="inherit";
}
if(isMinIE4)
str+='<div id="popUpMenu'+this.index+'_dmmy'+i+'" style="position:absolute; width:'+width+'px;"></div>\n';
}
if(isMinIE4&&!isMinIE5){
x=getPageScrollX();
y=getPageScrollY();
window.scrollTo(getPageWidth(),getPageHeight());
}
if(isMinIE4){
str='<div id="popUpMenu'+this.index+'_base" style="position:absolute; left:0px; top:0px; width:'+this.width+'px; overflow:hidden; visibility:hidden;">'+str+'</div>\n';
document.body.insertAdjacentHTML("beforeEnd",str);
if(!isMinIE5)
window.scrollTo(x,y);
this.baseLayer=getLayer("popUpMenu"+this.index+"_base");
for(i=0;i<2*this.border;i++){
bevelLayers[bevelLayers.length]=getLayer("popUpMenu"+this.index+"_bevel"+(2*i));
bevelLayers[bevelLayers.length]=getLayer("popUpMenu"+this.index+"_bevel"+(2*i+1));
}
}
x=this.border;
y=this.border;
height=0;
for(i=0;i<this.items.length;i++){
if(this.items[i].subMenu){
this.items[i].subMenu.parentItem=this.items[i];
this.items[i].subMenu.offsetX=this.width-(this.border+this.padding);
this.items[i].subMenu.offsetY=y;
}
if(isMinIE4){
this.items[i].normLayer=getLayer("popUpMenu"+this.index+"_norm"+i);
this.items[i].highLayer=getLayer("popUpMenu"+this.index+"_high"+i);
this.items[i].dmmyLayer=getLayer("popUpMenu"+this.index+"_dmmy"+i);
}
moveLayerTo(this.items[i].normLayer,x,y);
moveLayerTo(this.items[i].highLayer,x,y);
moveLayerTo(this.items[i].dmmyLayer,x,y);
height=getHeight(this.items[i].normLayer);
y+=height;
clipLayer(this.items[i].normLayer,0,0,width,height);
clipLayer(this.items[i].highLayer,0,0,width,height);
if(isMinIE4){
this.items[i].dmmyLayer.style.pixelWidth=width;
this.items[i].dmmyLayer.style.pixelHeight=height;
}
clipLayer(this.items[i].dmmyLayer,0,0,width,height);
if(!this.items[i].isSeparator){
this.items[i].dmmyLayer.index=this.index;
this.items[i].dmmyLayer.itemIndex=i;
this.items[i].dmmyLayer.onmouseover=popUpMenuItemOn;
this.items[i].dmmyLayer.onmouseout=popUpMenuItemOff;
if(isMinNS4){this.items[i].dmmyLayer.document.index=this.index;
this.items[i].dmmyLayer.document.itemIndex=i;
this.items[i].dmmyLayer.document.captureEvents(Event.MOUSEUP);
this.items[i].dmmyLayer.document.onmouseup=popUpMenuItemClick;
}
if(isMinIE4)
this.items[i].dmmyLayer.onclick=popUpMenuItemClick;
}
}
this.height=y+this.border;
if(isMinIE4)
this.baseLayer.style.height=this.height;
setBgColor(this.baseLayer,this.bdShColor);
clipLayer(this.baseLayer,0,0,this.width,this.height);
this.baseLayer.index=this.index;this.baseLayer.onmouseout=popUpMenuOff;
for(i=0;i<this.border;i++){
clipLayer(bevelLayers[2*i],i,i,this.width-i,this.height-i);
setBgColor(bevelLayers[2*i],this.bdHiColor);
clipLayer(bevelLayers[2*i+1],(i+1),(i+1),this.width,this.height);
setBgColor(bevelLayers[2*i+1],this.bdShColor);
if(isMinIE4){
bevelLayers[i].index=this.index;bevelLayers[i].onmouseout=popUpMenuOff;
}
}
this.created=true;
for(i=0;i<this.items.length;i++)
if(this.items[i].subMenu&&!this.items[i].subMenu.created)
this.items[i].subMenu.create();
window.status=" Done.";
if(this.parentMenu==null)
setTimeout('window.status = window.defaultStatus',500);
}

function popUpMenuOpen(x,y){
var maxX,maxY;
if(this.created){
maxX=getPageScrollX()+getWindowWidth()-this.width;
maxY=getPageScrollY()+getWindowHeight()-this.height;
if(isMinNS4&&getWindowHeight()<getPageHeight())
maxX-=popUpMenuScrollbarSize;
if(isMinNS4&&getWindowWidth()<getPageWidth())
maxY-=popUpMenuScrollbarSize;
if((x==null||y==null)){
if(this.isStatic&&!this.isSubmenu){
x=this.left;y=this.top;
}
else{
x=mouseX-(this.border+this.padding);
y=mouseY-(this.border+this.padding);
}
}
if(this.isSubmenu){
x=this.parentMenu.left+this.offsetX;
y=this.parentMenu.top+this.offsetY;
if(x>maxX)maxX=this.parentMenu.left+this.parentMenu.border-this.width;
this.parentMenu.openChild=this;
}
if(this.isSubmenu||!this.isStatic){
x=Math.max(0,Math.min(maxX,x));
y=Math.max(0,Math.min(maxY,y));
}
moveLayerTo(this.baseLayer,x,y);
showLayer(this.baseLayer);
this.isOpen=true;
this.left=x;
this.top=y;
this.right=x+this.width;
this.bottom=y+this.height;
}
}

function popUpMenuClose(){
if(this.created){
if(this.openChild!=null){
this.openChild.close();
this.openChild=null;
}
hideLayer(this.baseLayer);
this.isOpen=false;
if(this.isSubmenu){
hideLayer(this.parentItem.highLayer);
this.parentMenu.openChild=null;
}
}
}

function popUpMenuSetStatic(flag){
if(!this.isSubmenu)
this.isStatic=flag;
}

function popUpMenuMoveTo(x,y){
if(this.created)
moveLayerTo(this.baseLayer,x,y);
this.left=x;this.top=y;
this.right=this.left+this.width;
this.bottom=this.top+this.height;
}

function popUpMenuMoveBy(dx,dy){
if(this.created)
moveLayerBy(this.baseLayer,dx,dy);
this.left+=dx;
this.top+=dy;
this.right+=dx;
this.bottom+=dy;
}

function popUpMenuGetzIndex(){
if(this.created)
return(getzIndex(this.baseLayer));
else 
return(0);
}

function popUpMenuSetzIndex(z){
var i;
if(this.created){
setzIndex(this.baseLayer,z);
for(i=0;i<this.items.length;i++)
if(this.items[i].subMenu!=null)
this.items[i].subMenu.setzIndex(z);
}
}
function popUpMenuOff(e){
var menu;
var wasClosed;
menu=popUpMenus[this.index];
if(isMinIE4){
mouseX=window.event.clientX+document.body.scrollLeft;
mouseY=window.event.clientY+document.body.scrollTop;
if(mouseX>menu.left&&mouseX<menu.right&&mouseY>menu.top&&mouseY<menu.bottom)
return true;
}
wasClosed=false;
if(menu.openChild==null){
if(!menu.isStatic){
menu.close();
wasClosed=true;
}
}
else{
if(mouseX<menu.openChild.left||mouseX>menu.openChild.right||mouseY<menu.openChild.top||mouseY>menu.openChild.bottom){
if(!menu.isStatic){
menu.close();
wasClosed=true;
}
else 
menu.openChild.close();
}
}
while(wasClosed&&menu.isSubmenu&&!menu.parentMenu.isStatic){
wasClosed=false;
if(mouseX<menu.parentMenu.left||mouseX>menu.parentMenu.right||mouseY<menu.parentMenu.top||mouseY>menu.parentMenu.bottom){
menu.parentMenu.close();
wasClosed=true;
menu=menu.parentMenu;
}
}
return true;
}

function popUpMenuItemOn(e){
var menu,item;
menu=popUpMenus[this.index];
item=menu.items[this.itemIndex];
if(menu.openChild)menu.openChild.close();
showLayer(item.highLayer);
if(item.subMenu)
item.subMenu.open(null,null);
}

function popUpMenuItemOff(e){
var menu,item;
menu=popUpMenus[this.index];
item=menu.items[this.itemIndex];
if(item.subMenu!=null&&item.subMenu.isOpen)
return;
hideLayer(item.highLayer);
}

function popUpMenuItemClick(e){
var menu,item;
menu=popUpMenus[this.index];
item=menu.items[this.itemIndex];
if(item.link=="")
return true;
hideLayer(item.highLayer);
while(menu.isSubmenu)
menu=menu.parentMenu;
if(!menu.isStatic)menu.close();
else 
if(menu.openChild!=null)
menu.openChild.close();
if(item.link.indexOf("javascript:")==0)
eval(item.link);
else 
window.location.href=item.link;
return true;
}
var mouseX=0;
var mouseY=0;
if(isMinNS4)document.captureEvents(Event.MOUSEMOVE);
document.onmousemove=popUpMenuGetMousePosition;

function popUpMenuGetMousePosition(e){
if(isMinNS4){
mouseX=e.pageX;
mouseY=e.pageY;
}
if(isMinIE4){
mouseX=window.event.clientX+document.body.scrollLeft;
mouseY=window.event.clientY+document.body.scrollTop;
}
}
var origWidth;
var origHeight;
if(isMinNS4){
origWidth=window.innerWidth;
origHeight=window.innerHeight;
}
window.onresize=popUpMenuReload;
function popUpMenuReload(){
if(isMinNS4&&origWidth==window.innerWidth&&origHeight==window.innerHeight)
return;
if(isMinIE4)
setTimeout('window.location.href = window.location.href',2000);
else window.location.href=window.location.href;
}