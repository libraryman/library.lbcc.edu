var menu = new PopUpMenu(170);
menu.setSizes(3,6, 3, 1);
//            (fgColor,bgColor,hiFgColor,hiBgColor,bdHiColor,bdShColor,spHiColor,spShColor){
//menu.setColors("blue", "lime", "yellow", "maroon", "white", "white", "black", "black");
menu.setFont("Verdana,MS Sans Serif,Arial,Helvetica", "plain", "bold", "8pt");
var myI1 = new Image(); myI1.src="transparent.gif";
var myI2 = new Image(); myI2.src="menu_norm.gif";
var myI3 = new Image(); myI3.src="menu_high.gif";

menu.setImages(myI1.src,myI2.src,myI3.src, 10, 12);



var sub1 = new PopUpMenu(150);
sub1.copyAttributes(menu);
sub1.setColors( "yellow", "33cc66","yellow ", "green", "black", "black", "black", "black");
  
sub1.addItem(new PopUpMenuItem("Proquest","javascript:window.open('http://lib.lbcc.edu/handouts/pqdirect.htm')"));
sub1.addSeparator();
sub1.addItem(new PopUpMenuItem("Sirs", "javascript:window.open('http://ars.sirs.com')"));
sub1.addSeparator();
sub1.addItem(new PopUpMenuItem("Newsbank", "javascript:window.open('http://infoweb.newsbank.com')"));
sub1.addSeparator();
sub1.addItem(new PopUpMenuItem("Health Reference Center", "javascript:window.open('http://galenet.gale.com')"));
sub1.addSeparator();
sub1.addItem(new PopUpMenuItem("Encyclopedia Britannica", "javascript:window.open('http://search.eb.com/failedlogin?target=/')"));
sub1.addSeparator();
sub1.addItem(new PopUpMenuItem("Gender Watch", "javascript:window.open('http://gw.softlineweb.com')"));
sub1.addSeparator();
sub1.addItem(new PopUpMenuItem("Ethnic News Watch", "javascript:window.open('http://enw.softlineweb.com')"));
sub1.addSeparator();
sub1.addItem(new PopUpMenuItem("Literature Resource Center", "javascript:window.open('http://infotrac.galenet.com/galenet')"));
sub1.addSeparator();
sub1.addItem(new PopUpMenuItem("Biography Resource Center", "javascript:window.open('http://infotrac.galenet.com/galenet')"));
sub1.addSeparator();
sub1.addItem(new PopUpMenuItem("Facts", "javascript:window.open('http://www.2facts.com/FormsLogin.asp')"));
sub1.addSeparator();
sub1.addItem(new PopUpMenuItem("CQ Researcher", "javascript:window.open('http://library.cqpress.com/cqresearcher/login.php')"));
sub1.addSeparator();
sub1.addItem(new PopUpMenuItem("Health and Wellness Resource center", "javascript:window.open('http://infotrac.galenet.com/galenet')"));
sub1.addSeparator();
sub1.addItem(new PopUpMenuItem("Health Reference Center", "javascript:window.open('http://infotrac.galenet.com/galenet')"));
sub1.addSeparator();
sub1.addItem(new PopUpMenuItem("Opposing Viewpoints Resource Center", "javascript:window.open('http://infotrac.galenet.com/galenet')"));







var sub2 = new PopUpMenu(150);
sub2.copyAttributes(menu);
sub2.setColors( "yellow", "33cc66","yellow ", "green" , "black", "black", "black", "black");

sub2.addItem(new PopUpMenuItem("Proquest", "javascript:window.open('http://lib.lbcc.edu/monicawhite/proquest/study4.html')"));
sub2.addSeparator();
sub2.addItem(new PopUpMenuItem("Sirs", "#"));
sub2.addSeparator();
sub2.addItem(new PopUpMenuItem("Newsbank", "#"));
sub2.addSeparator();
sub2.addItem(new PopUpMenuItem("Health Reference Center", "#"));
sub2.addSeparator();
sub2.addItem(new PopUpMenuItem("Encyclopedia Britannica", "#"));
sub2.addSeparator();
sub2.addItem(new PopUpMenuItem("Gender Watch", "#"));
sub2.addSeparator();
sub2.addItem(new PopUpMenuItem("Ethnic News Watch", "#"));
sub2.addSeparator();
sub2.addItem(new PopUpMenuItem("Literature Resource Center", "#"));
sub2.addSeparator();
sub2.addItem(new PopUpMenuItem("Biography Resource Center", "#"));
sub2.addSeparator();
sub2.addItem(new PopUpMenuItem("Facts", "#"));
sub2.addSeparator();
sub2.addItem(new PopUpMenuItem("CQ Researcher", "#"));
sub2.addSeparator();
sub2.addItem(new PopUpMenuItem("Facts On File", "#"));
sub2.addSeparator();
sub2.addItem(new PopUpMenuItem("A Matter of Fact", "#"));




var intro = new PopUpMenu(110);
intro.copyAttributes(menu);
intro.setColors( "yellow", "33cc66","yellow ", "green" ,"black", "black", "black", "black");
intro.addSubmenu(new PopUpMenuItem("QuickGuide", "javascript:window.open('http://lib.lbcc.edu/illfaq.html')"),sub1);
intro.addSeparator();
intro.addSubmenu(new PopUpMenuItem("Powerpoint", "javascript:window.open('http://lib.lbcc.edu/illfaq.html')"),sub2);




var part1 = new PopUpMenu(150);
part1.copyAttributes(menu);
part1.setColors("yellow", "33cc66","yellow ", "green" , "black", "black", "black", "black");
part1.addItem(new PopUpMenuItem("Staff", "#"));
part1.addSeparator();
part1.addItem(new PopUpMenuItem("ILL FAQ", "javascript:window.open('http://lib.lbcc.edu/illfaq.html')"));
part1.addSeparator();
part1.addItem(new PopUpMenuItem("ILL Forms", "javascript:window.open('http://lib.lbcc.edu/forms/ill-form.html')"));
part1.addSeparator();
part1.addItem(new PopUpMenuItem("ILL Borrowing Policies", "javascript:window.open('http://lib.lbcc.edu/illpolicy.html')"));
part1.addSeparator();
part1.addItem(new PopUpMenuItem("ILL Lending Policies", "javascript:window.open('http://lib.lbcc.edu/illpolicy2.html')"));

var part2 = new PopUpMenu(150);
part2.copyAttributes(menu);
part2.setColors( "yellow", "33cc66","yellow ", "green" , "black", "black", "black", "black");

part2.addItem(new PopUpMenuItem("Staff", "#"));
part2.addSeparator();
part2.addItem(new PopUpMenuItem("Circulation FAQ", "javascript:window.open('http://lib.lbcc.edu/libcircfaq.html')"));
part2.addSeparator();
part2.addItem(new PopUpMenuItem("Circulation Policies", "javascript:window.open('http://lib.lbcc.edu/libcirculation.html')"));

var part3 = new PopUpMenu(150);
part3.copyAttributes(menu);
part3.setColors("yellow", "33cc66","yellow ", "green" , "black", "black", "black", "black");

part3.addItem(new PopUpMenuItem("Staff", "#"));
part3.addSeparator();
part3.addItem(new PopUpMenuItem("Periodicals FAQ", "javascript:window.open('http://lib.lbcc.edu/libperiodicalsfaq.html')"));
part3.addSeparator();
part3.addItem(new PopUpMenuItem("Policies And Procedures", "javascript:window.open('http://lib.lbcc.edu/libperiodicals.html')"));
part3.addSeparator();
part3.addItem(new PopUpMenuItem("List Of Periodicals", "javascript:window.open('http://lib.lbcc.edu/persubj2.html')"));

var part4 = new PopUpMenu(150);
part4.copyAttributes(menu);
part4.setColors("yellow", "33cc66","yellow ", "green" , "black", "black", "black", "black");
part4.addItem(new PopUpMenuItem("Staff", "#"));
part4.addSeparator();
part4.addItem(new PopUpMenuItem("LVIS", "javascript:window.open('http://www.cyberdriveillinois.com/library/isl/oclc/lvis_dir.html')"));
part4.addSeparator();
part4.addItem(new PopUpMenuItem("OCLC", "#"));
part4.addSeparator();
part4.addItem(new PopUpMenuItem("Neighborhood Libraries", "javascript:window.open('http://lib.lbcc.edu/academic2.html')"));

var part5 = new PopUpMenu(150);
part5.copyAttributes(menu);
part5.setColors("yellow", "33cc66","yellow ", "green" , "black", "black", "black", "black");

part5.addItem(new PopUpMenuItem("Powerpoint", "#"));
part5.addSeparator();
part5.addItem(new PopUpMenuItem("Related Subject Guides", "#"));


var part6 = new PopUpMenu(150);
part6.copyAttributes(menu);
part6.setColors("yellow", "33cc66","yellow ", "green" ,"black", "black", "black", "black");
part6.addItem(new PopUpMenuItem("Lib 210 Web Health Resource", "javascript:window.open('http://lib.lbcc.edu/teaching.html')"));
part6.addSeparator();
part6.addItem(new PopUpMenuItem("Online Database Searching Workshop", "javascript:window.open('http://lib.lbcc.edu/lw2.html')"));

var part7 = new PopUpMenu(150);
part7.copyAttributes(menu);
part7.setColors("yellow", "33cc66","yellow ", "green" ,"black", "black", "black", "black");
part7.addItem(new PopUpMenuItem("Culture Of The Philippines", "javascript:window.open('http://bigdip.net/lxs/dot/aboutcul.htm')"));
part7.addSeparator();
part7.addItem(new PopUpMenuItem("Facts & Figures Of Philippines", "javascript:window.open('http://bigdip.net/lxs/dot/aboutfac5.htm')"));


menu.setColors( "yellow", "006600","yellow ", "green" ,"black", "black", "black", "black");
menu.addSubmenu(new PopUpMenuItem("Online Databases", "javascript:window.open('http://lib.lbcc.edu/databases2.html')"), intro);

menu.addSeparator();
menu.addSubmenu(new PopUpMenuItem("Interlibrary Loan", "javascript:window.open('http://lib.lbcc.edu/ill.html')"), part1);
menu.addSeparator();
menu.addSubmenu(new PopUpMenuItem("Circulations","javascript:window.open('http:// lib.lbcc.edu/libcirculation.html')"), part2);
menu.addSeparator();
menu.addSubmenu(new PopUpMenuItem("Periodicals", "javascript:window.open('http://lib.lbcc.edu/libperiodicals.html')"), part3);
menu.addSeparator();
menu.addSubmenu(new PopUpMenuItem("Cooperative Libraries", "javascript:window.open('http://lib.lbcc.edu/academic.html')"), part4);
menu.addSeparator();
menu.addSubmenu(new PopUpMenuItem("Library Orientation", "javascript:window.open('http://lib.lbcc.edu/eh2.html')"), part5);
menu.addSeparator();
menu.addSubmenu(new PopUpMenuItem("Library Instructions", "javascript:window.open('http://lib.lbcc.edu/class/infolit.html')"), part6);
menu.addSeparator();
menu.addSubmenu(new PopUpMenuItem("My Favourite Links", "#"), part7);




window.onload = initMenu;
var menuALIGN = "center";	

var absLEFT= 150;		
var absTOP = 	165;



var staticMENU = false;
	

var stretchMENU = false;		
var showBORDERS = false;


function initMenu() {

  menu.create();
  menu.setStatic(true);
  
  menu.open(absLEFT, absTOP);
  
}


