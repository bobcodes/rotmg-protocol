package mejowozy
{
[CLASS1483]   import flash.geom.Point;
   import com.company.assembleegameclient.objects.GameObject;
   import flash.utils.Timer;
   import flash.events.TimerEvent;


   public class Dep extends Ryf
   {
      public function Dep(param1:GameObject) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         this.go=param1;
         return;
      }

      public var start_:Point;

      public var go:GameObject;

      private var gavuvo:Boolean;

      override public function update(param1:int, param2:int) : Boolean {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Timer = new Timer(50,12);
         _loc3_.addEventListener(TimerEvent.TIMER,this.weqyliga);
         _loc3_.start();
         return false;
      }

      private function weqyliga(param1:TimerEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.gavuvo=!this.gavuvo;
         this.go.kibyno(this.gavuvo);
         return;
      }
   }
[/CLASS]
}