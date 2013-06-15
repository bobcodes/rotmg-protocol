package zipirytab
{
   import flash.text.StyleSheet;


   public class Vohodolol extends Object
   {
      public function Vohodolol() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.nubinava=new StyleSheet();
         return;
      }

      public var menuFont:String = "Arial";

      public var menuFontSize:int = 12;

      public var cibawi:String = "Verdana";

      public var traceFontSize:int = 11;

      public var backgroundColor:uint;

      public var bacykasuv:Number = 0.9;

      public var controlColor:uint = 10027008;

      public var controlSize:uint = 5;

      public var commandLineColor:uint = 1092096;

      public var highColor:uint = 16777215;

      public var lowColor:uint = 12632256;

      public var tajaw:uint = 12632256;

      public var gupow:uint = 16746496;

      public var bymad:uint = 14505216;

      public var kirigo:uint = 16777215;

      public var bahiwus:uint = 39372;

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

      public var momajuho:int = 3;

      public var gyzugu:int = 10;

      public function dezuqa() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.backgroundColor=16777215;
         this.controlColor=16724787;
         this.commandLineColor=6736896;
         this.highColor=0;
         this.lowColor=3355443;
         this.tajaw=4473924;
         this.gupow=13373696;
         this.bymad=8917248;
         this.kirigo=0;
         this.bahiwus=26282;
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

      public function lepucajyg() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.traceFontSize=13;
         this.menuFontSize=14;
         return;
      }

      private var nubinava:StyleSheet;

      public function updateStyleSheet() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.nubinava.setStyle("high",
            {
               color:this.gideho(this.highColor),
               fontFamily:this.menuFont,
               fontSize:this.menuFontSize,
               display:"inline"
            }
         );
         this.nubinava.setStyle("low",
            {
               color:this.gideho(this.lowColor),
               fontFamily:this.menuFont,
               fontSize:this.menuFontSize-2,
               display:"inline"
            }
         );
         this.nubinava.setStyle("menu",
            {
               color:this.gideho(this.gupow),
               display:"inline"
            }
         );
         this.nubinava.setStyle("menuHi",
            {
               color:this.gideho(this.bymad),
               display:"inline"
            }
         );
         this.nubinava.setStyle("chs",
            {
               color:this.gideho(this.kirigo),
               fontSize:this.menuFontSize,
               leading:"2",
               display:"inline"
            }
         );
         this.nubinava.setStyle("ch",
            {
               color:this.gideho(this.bahiwus),
               display:"inline"
            }
         );
         this.nubinava.setStyle("tt",
            {
               color:this.gideho(this.gupow),
               fontFamily:this.menuFont,
               fontSize:this.menuFontSize,
               textAlign:"center"
            }
         );
         this.nubinava.setStyle("r",
            {
               textAlign:"right",
               display:"inline"
            }
         );
         this.nubinava.setStyle("p",
            {
               fontFamily:this.cibawi,
               fontSize:this.traceFontSize
            }
         );
         this.nubinava.setStyle("p0",
            {
               color:this.gideho(this.priority0),
               display:"inline"
            }
         );
         this.nubinava.setStyle("p1",
            {
               color:this.gideho(this.priority1),
               display:"inline"
            }
         );
         this.nubinava.setStyle("p2",
            {
               color:this.gideho(this.priority2),
               display:"inline"
            }
         );
         this.nubinava.setStyle("p3",
            {
               color:this.gideho(this.priority3),
               display:"inline"
            }
         );
         this.nubinava.setStyle("p4",
            {
               color:this.gideho(this.priority4),
               display:"inline"
            }
         );
         this.nubinava.setStyle("p5",
            {
               color:this.gideho(this.priority5),
               display:"inline"
            }
         );
         this.nubinava.setStyle("p6",
            {
               color:this.gideho(this.priority6),
               display:"inline"
            }
         );
         this.nubinava.setStyle("p7",
            {
               color:this.gideho(this.priority7),
               display:"inline"
            }
         );
         this.nubinava.setStyle("p8",
            {
               color:this.gideho(this.priority8),
               display:"inline"
            }
         );
         this.nubinava.setStyle("p9",
            {
               color:this.gideho(this.priority9),
               display:"inline"
            }
         );
         this.nubinava.setStyle("p10",
            {
               color:this.gideho(this.priority10),
               fontWeight:"bold",
               display:"inline"
            }
         );
         this.nubinava.setStyle("p-1",
            {
               color:this.gideho(this.priorityC1),
               display:"inline"
            }
         );
         this.nubinava.setStyle("p-2",
            {
               color:this.gideho(this.priorityC2),
               display:"inline"
            }
         );
         this.nubinava.setStyle("logs",
            {
               color:this.gideho(this.tajaw),
               display:"inline"
            }
         );
         return;
      }

      public function get styleSheet() : StyleSheet {
         return this.nubinava;
      }

      private function gideho(param1:Number) : String {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return "#"+param1.toString(16);
      }
   }

}