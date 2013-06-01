package moryzis
{
   import flash.geom.Point;
   import com.company.assembleegameclient.objects.GameObject;
   import flash.utils.Timer;
   import flash.events.TimerEvent;


   public class Mutumac extends Jil
   {
      public function Mutumac(param1:GameObject) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         this.go=param1;
         return;
      }

      public var start_:Point;

      public var go:GameObject;

      private var gumejahig:Boolean;

      override public function update(param1:int, param2:int) : Boolean {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Timer = new Timer(50,12);
         _loc3_.addEventListener(TimerEvent.TIMER,this.porykocaq);
         _loc3_.start();
         return false;
      }

      private function porykocaq(param1:TimerEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.gumejahig=!this.gumejahig;
         this.go.lonic(this.gumejahig);
         return;
      }
   }

}