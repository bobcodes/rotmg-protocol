package pejycaj
{
   import flash.display.Sprite;
   import hivysif.Liwyny;
   import jediwip.Vofezuzy;
   import flash.utils.Timer;
   import flash.events.TimerEvent;
   import flash.filters.DropShadowFilter;


   public class Sihetyta extends Sprite
   {
      public function Sihetyta() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private const bufynoh:Liwyny = this.qujozij();

      private const libejyjot:Vofezuzy = new Vofezuzy();

      private var gedinezu:Number = 0;

      private const timer:Timer = new Timer(1000);

      public function start() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.mivacubyr(null);
         this.timer.addEventListener(TimerEvent.TIMER,this.mivacubyr);
         this.timer.start();
         return;
      }

      public function stop() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.timer.removeEventListener(TimerEvent.TIMER,this.mivacubyr);
         this.timer.stop();
         return;
      }

      private function mivacubyr(param1:TimerEvent) : void {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc2_:int = this.gedinezu/60;
         var _loc3_:int = this.gedinezu%60;
         var _loc4_:String = _loc2_<10?"0":"";
         _loc4_=_loc4_+(_loc2_+":");
         _loc4_=_loc4_+(_loc3_<10?"0":"");
         _loc4_=_loc4_+_loc3_;
         this.bufynoh.setStringBuilder(this.libejyjot.setString(_loc4_));
         this.gedinezu++;
         return;
      }

      private function qujozij() : Liwyny {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Liwyny = new Liwyny();
         _loc1_.setSize(24).setBold(true).setColor(16777215);
         _loc1_.filters=[new DropShadowFilter(0,0,0,1,8,8)];
         addChild(_loc1_);
         return _loc1_;
      }
   }

}