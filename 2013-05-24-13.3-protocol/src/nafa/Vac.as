package nafa
{
   import flash.display.Sprite;
   import __AS3__.vec.Vector;
   import com.company.util.IntPoint;
   import flash.display.Shape;
   import flash.events.Event;
   import flash.display.Graphics;


   public class Vac extends Sprite
   {
      public function Vac(param1:Vector.<IntPoint>, param2:String) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         super();
         this.tiles_=param1;
         this.daf=new Shape();
         var _loc3_:Graphics = this.daf.graphics;
         _loc3_.clear();
         _loc3_.beginFill(0,0.8);
         _loc3_.drawRect(0,0,800,600);
         _loc3_.endFill();
         addChild(this.daf);
         this.pyluw=new Mawyfybil(param2);
         this.pyluw.addEventListener(Event.COMPLETE,this.onComplete);
         this.pyluw.addEventListener(Event.CANCEL,this.onCancel);
         addChild(this.pyluw);
         return;
      }

      public var tiles_:Vector.<IntPoint>;

      private var daf:Shape;

      private var pyluw:Mawyfybil;

      public function vyfenod() : String {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.pyluw.jetajy.text()=="")
         {
            return null;
         }
         return this.pyluw.jetajy.text();
      }

      public function onComplete(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         dispatchEvent(new Event(Event.COMPLETE));
         parent.removeChild(this);
         return;
      }

      public function onCancel(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         parent.removeChild(this);
         return;
      }
   }

}