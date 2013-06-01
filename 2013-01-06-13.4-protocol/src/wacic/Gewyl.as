package wacic
{
[CLASS1853]   import flash.text.StyleSheet;


   public class Gewyl extends Object
   {
      public function Gewyl() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.vabozifo=new StyleSheet();
         return;
      }

      public var menuFont:String = "Arial";

      public var menuFontSize:int = 12;

      public var juga:String = "Verdana";

      public var traceFontSize:int = 11;

      public var backgroundColor:uint;

      public var gazi:Number = 0.9;

      public var controlColor:uint = 10027008;

      public var controlSize:uint = 5;

      public var commandLineColor:uint = 1092096;

      public var highColor:uint = 16777215;

      public var lowColor:uint = 12632256;

      public var fufabaca:uint = 12632256;

      public var zarupuf:uint = 16746496;

      public var rogisosis:uint = 14505216;

      public var kodil:uint = 16777215;

      public var rejumag:uint = 39372;

      public var priority0:uint = 3831610;

      public var priority1:uint = 4495684;

      public var priority2:uint = 7846775;

      public var priority3:uint = 10539168;

      public var priority4:uint = 14085846;

      public var priority5:uint = 15329769;

      public var priority6:uint = 16768477;

      public var priority7:uint = 16755370;

      public var priority8:uint = 16742263;

      public var priority9:uint = 16720418;

      public var priority10:uint = 16720418;

      public var priorityC1:uint = 39372;

      public var priorityC2:uint = 16746496;

      public var topMenu:Boolean = true;

      public var showCommandLineScope:Boolean = true;

      public var maxChannelsInMenu:int = 7;

      public var pujup:int = 3;

      public var gezikup:int = 10;

      public function lalelyhi() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.backgroundColor=16777215;
         this.controlColor=16724787;
         this.commandLineColor=6736896;
         this.highColor=0;
         this.lowColor=3355443;
         this.fufabaca=4473924;
         this.zarupuf=13373696;
         this.rogisosis=8917248;
         this.kodil=0;
         this.rejumag=26282;
         this.priority0=4497476;
         this.priority1=3379251;
         this.priority2=2258722;
         this.priority3=1135889;
         this.priority4=13056;
         this.priority5=0;
         this.priority6=6684672;
         this.priority7=10027008;
         this.priority8=12255232;
         this.priority9=14483456;
         this.priority10=14483456;
         this.priorityC1=39372;
         this.priorityC2=16737792;
         return;
      }

      public function wabefoke() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.traceFontSize=13;
         this.menuFontSize=14;
         return;
      }

      private var vabozifo:StyleSheet;

      public function updateStyleSheet() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.vabozifo.setStyle("high",
            {
               color:this.cepaq(this.highColor),
               fontFamily:this.menuFont,
               fontSize:this.menuFontSize,
               display:"inline"
            }
         );
         this.vabozifo.setStyle("low",
            {
               color:this.cepaq(this.lowColor),
               fontFamily:this.menuFont,
               fontSize:this.menuFontSize-2,
               display:"inline"
            }
         );
         this.vabozifo.setStyle("menu",
            {
               color:this.cepaq(this.zarupuf),
               display:"inline"
            }
         );
         this.vabozifo.setStyle("menuHi",
            {
               color:this.cepaq(this.rogisosis),
               display:"inline"
            }
         );
         this.vabozifo.setStyle("chs",
            {
               color:this.cepaq(this.kodil),
               fontSize:this.menuFontSize,
               leading:"2",
               display:"inline"
            }
         );
         this.vabozifo.setStyle("ch",
            {
               color:this.cepaq(this.rejumag),
               display:"inline"
            }
         );
         this.vabozifo.setStyle("tt",
            {
               color:this.cepaq(this.zarupuf),
               fontFamily:this.menuFont,
               fontSize:this.menuFontSize,
               textAlign:"center"
            }
         );
         this.vabozifo.setStyle("r",
            {
               textAlign:"right",
               display:"inline"
            }
         );
         this.vabozifo.setStyle("p",
            {
               fontFamily:this.juga,
               fontSize:this.traceFontSize
            }
         );
         this.vabozifo.setStyle("p0",
            {
               color:this.cepaq(this.priority0),
               display:"inline"
            }
         );
         this.vabozifo.setStyle("p1",
            {
               color:this.cepaq(this.priority1),
               display:"inline"
            }
         );
         this.vabozifo.setStyle("p2",
            {
               color:this.cepaq(this.priority2),
               display:"inline"
            }
         );
         this.vabozifo.setStyle("p3",
            {
               color:this.cepaq(this.priority3),
               display:"inline"
            }
         );
         this.vabozifo.setStyle("p4",
            {
               color:this.cepaq(this.priority4),
               display:"inline"
            }
         );
         this.vabozifo.setStyle("p5",
            {
               color:this.cepaq(this.priority5),
               display:"inline"
            }
         );
         this.vabozifo.setStyle("p6",
            {
               color:this.cepaq(this.priority6),
               display:"inline"
            }
         );
         this.vabozifo.setStyle("p7",
            {
               color:this.cepaq(this.priority7),
               display:"inline"
            }
         );
         this.vabozifo.setStyle("p8",
            {
               color:this.cepaq(this.priority8),
               display:"inline"
            }
         );
         this.vabozifo.setStyle("p9",
            {
               color:this.cepaq(this.priority9),
               display:"inline"
            }
         );
         this.vabozifo.setStyle("p10",
            {
               color:this.cepaq(this.priority10),
               fontWeight:"bold",
               display:"inline"
            }
         );
         this.vabozifo.setStyle("p-1",
            {
               color:this.cepaq(this.priorityC1),
               display:"inline"
            }
         );
         this.vabozifo.setStyle("p-2",
            {
               color:this.cepaq(this.priorityC2),
               display:"inline"
            }
         );
         this.vabozifo.setStyle("logs",
            {
               color:this.cepaq(this.fufabaca),
               display:"inline"
            }
         );
         return;
      }

      public function get styleSheet() : StyleSheet {
         return this.vabozifo;
      }

      private function cepaq(param1:Number) : String {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return "#"+param1.toString(16);
      }
   }
[/CLASS]
}