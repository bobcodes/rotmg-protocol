package lutyfopo
{
   import flash.text.StyleSheet;


   public class Syby extends Object
   {
      public function Syby() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.tasud=new StyleSheet();
         return;
      }

      public var menuFont:String = "Arial";

      public var menuFontSize:int = 12;

      public var tywusa:String = "Verdana";

      public var traceFontSize:int = 11;

      public var backgroundColor:uint;

      public var lotezika:Number = 0.9;

      public var controlColor:uint = 10027008;

      public var controlSize:uint = 5;

      public var commandLineColor:uint = 1092096;

      public var highColor:uint = 16777215;

      public var lowColor:uint = 12632256;

      public var vakelow:uint = 12632256;

      public var vodap:uint = 16746496;

      public var jotur:uint = 14505216;

      public var nig:uint = 16777215;

      public var tehuv:uint = 39372;

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

      public var cicosuva:int = 3;

      public var semeqez:int = 10;

      public function kyrusy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.backgroundColor=16777215;
         this.controlColor=16724787;
         this.commandLineColor=6736896;
         this.highColor=0;
         this.lowColor=3355443;
         this.vakelow=4473924;
         this.vodap=13373696;
         this.jotur=8917248;
         this.nig=0;
         this.tehuv=26282;
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

      public function tumo() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.traceFontSize=13;
         this.menuFontSize=14;
         return;
      }

      private var tasud:StyleSheet;

      public function updateStyleSheet() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.tasud.setStyle("high",
            {
               color:this.zofenumyw(this.highColor),
               fontFamily:this.menuFont,
               fontSize:this.menuFontSize,
               display:"inline"
            }
         );
         this.tasud.setStyle("low",
            {
               color:this.zofenumyw(this.lowColor),
               fontFamily:this.menuFont,
               fontSize:this.menuFontSize-2,
               display:"inline"
            }
         );
         this.tasud.setStyle("menu",
            {
               color:this.zofenumyw(this.vodap),
               display:"inline"
            }
         );
         this.tasud.setStyle("menuHi",
            {
               color:this.zofenumyw(this.jotur),
               display:"inline"
            }
         );
         this.tasud.setStyle("chs",
            {
               color:this.zofenumyw(this.nig),
               fontSize:this.menuFontSize,
               leading:"2",
               display:"inline"
            }
         );
         this.tasud.setStyle("ch",
            {
               color:this.zofenumyw(this.tehuv),
               display:"inline"
            }
         );
         this.tasud.setStyle("tt",
            {
               color:this.zofenumyw(this.vodap),
               fontFamily:this.menuFont,
               fontSize:this.menuFontSize,
               textAlign:"center"
            }
         );
         this.tasud.setStyle("r",
            {
               textAlign:"right",
               display:"inline"
            }
         );
         this.tasud.setStyle("p",
            {
               fontFamily:this.tywusa,
               fontSize:this.traceFontSize
            }
         );
         this.tasud.setStyle("p0",
            {
               color:this.zofenumyw(this.priority0),
               display:"inline"
            }
         );
         this.tasud.setStyle("p1",
            {
               color:this.zofenumyw(this.priority1),
               display:"inline"
            }
         );
         this.tasud.setStyle("p2",
            {
               color:this.zofenumyw(this.priority2),
               display:"inline"
            }
         );
         this.tasud.setStyle("p3",
            {
               color:this.zofenumyw(this.priority3),
               display:"inline"
            }
         );
         this.tasud.setStyle("p4",
            {
               color:this.zofenumyw(this.priority4),
               display:"inline"
            }
         );
         this.tasud.setStyle("p5",
            {
               color:this.zofenumyw(this.priority5),
               display:"inline"
            }
         );
         this.tasud.setStyle("p6",
            {
               color:this.zofenumyw(this.priority6),
               display:"inline"
            }
         );
         this.tasud.setStyle("p7",
            {
               color:this.zofenumyw(this.priority7),
               display:"inline"
            }
         );
         this.tasud.setStyle("p8",
            {
               color:this.zofenumyw(this.priority8),
               display:"inline"
            }
         );
         this.tasud.setStyle("p9",
            {
               color:this.zofenumyw(this.priority9),
               display:"inline"
            }
         );
         this.tasud.setStyle("p10",
            {
               color:this.zofenumyw(this.priority10),
               fontWeight:"bold",
               display:"inline"
            }
         );
         this.tasud.setStyle("p-1",
            {
               color:this.zofenumyw(this.priorityC1),
               display:"inline"
            }
         );
         this.tasud.setStyle("p-2",
            {
               color:this.zofenumyw(this.priorityC2),
               display:"inline"
            }
         );
         this.tasud.setStyle("logs",
            {
               color:this.zofenumyw(this.vakelow),
               display:"inline"
            }
         );
         return;
      }

      public function get styleSheet() : StyleSheet {
         return this.tasud;
      }

      private function zofenumyw(param1:Number) : String {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return "#"+param1.toString(16);
      }
   }

}