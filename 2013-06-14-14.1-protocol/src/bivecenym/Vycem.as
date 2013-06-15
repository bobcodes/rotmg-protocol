package bivecenym
{
   import flash.display.Sprite;
   import flash.utils.Timer;
   import hivysif.Liwyny;
   import jediwip.Kybidu;
   import flash.events.TimerEvent;
   import komi.Vibemod;
   import flash.filters.DropShadowFilter;


   public class Vycem extends Sprite
   {
      public function Vycem() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.zahafo=this.gymyw();
         this.lyzekyhow=this.fubo();
         this.miro=new Kybidu();
         super();
         addChild(this.lyzekyhow);
         this.lyzekyhow.setStringBuilder(this.miro.setParams(Vibemod.zite,{time:this.hynytyfy()}));
         this.mivacubyr=new Timer(1000);
         this.mivacubyr.addEventListener(TimerEvent.TIMER,this.zojy);
         this.mivacubyr.start();
         return;
      }

      private const qykynyt:Number = 1;

      private const hyvesyfut:Number = 7;

      private var zahafo:Number;

      private var mivacubyr:Timer;

      private var lyzekyhow:Liwyny;

      private var miro:Kybidu;

      private function zojy(param1:TimerEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.zahafo=this.zahafo-1000;
         this.lyzekyhow.setStringBuilder(this.miro.setParams(Vibemod.zite,{time:this.hynytyfy()}));
         return;
      }

      private function hynytyfy() : String {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc1_:int = this.zahafo;
         var _loc2_:int = Math.floor(_loc1_/86400000);
         _loc1_=_loc1_%86400000;
         var _loc3_:int = Math.floor(_loc1_/3600000);
         _loc1_=_loc1_%3600000;
         var _loc4_:int = Math.floor(_loc1_/60000);
         _loc1_=_loc1_%60000;
         var _loc5_:int = Math.floor(_loc1_/1000);
         var _loc6_:* = "";
         if(_loc2_>0)
         {
            _loc6_=_loc2_+" days, "+_loc3_+" hours, "+_loc4_+" minutes";
         }
         else
         {
            _loc6_=_loc3_+" hours, "+_loc4_+" minutes, "+_loc5_+" seconds";
         }
         return _loc6_;
      }

      private function gymyw() : Number {
         var _loc1_:Date = new Date();
         var _loc2_:Date = this.kicavyvy();
         return _loc2_.getTime()-_loc1_.getTime();
      }

      private function kicavyvy() : Date {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Date = new Date();
         if(_loc1_.dayUTC==this.qykynyt&&_loc1_.hoursUTC<this.hyvesyfut)
         {
            _loc1_.setUTCHours(this.hyvesyfut-_loc1_.hoursUTC);
            return _loc1_;
         }
         _loc1_.setUTCHours(7);
         _loc1_.setUTCMinutes(0);
         _loc1_.setUTCSeconds(0);
         _loc1_.setUTCMilliseconds(0);
         _loc1_.setUTCDate(_loc1_.dateUTC+1);
         while(_loc1_.dayUTC!=this.qykynyt)
         {
            _loc1_.setUTCDate(_loc1_.dateUTC+1);
         }
         return _loc1_;
      }

      private function fubo() : Liwyny {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Liwyny = new Liwyny();
         _loc1_.setSize(14).setColor(16567065).setBold(true);
         _loc1_.filters=[new DropShadowFilter(0,0,0,1,8,8)];
         return _loc1_;
      }
   }

}