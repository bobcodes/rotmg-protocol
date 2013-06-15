package noniq
{
   import flash.display.Sprite;
   import __AS3__.vec.Vector;
   import com.company.util.IntPoint;
   import flash.display.Shape;
   import flash.events.Event;
   import flash.display.Graphics;


   public class Dusuf extends Sprite
   {
      public function Dusuf(param1:Vector.<IntPoint>, param2:String) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         super();
         this.tiles_=param1;
         this.cazepoj=new Shape();
         var _loc3_:Graphics = this.cazepoj.graphics;
         _loc3_.clear();
         _loc3_.beginFill(0,0.8);
         _loc3_.drawRect(0,0,800,600);
         _loc3_.endFill();
         addChild(this.cazepoj);
         this.kuwa=new Fyheda(param2);
         this.kuwa.addEventListener(Event.COMPLETE,this.onComplete);
         this.kuwa.addEventListener(Event.CANCEL,this.onCancel);
         addChild(this.kuwa);
         return;
      }

      public var tiles_:Vector.<IntPoint>;

      private var cazepoj:Shape;

      private var kuwa:Fyheda;

      public function homosuwyd() : String {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.kuwa.mavaw.text()=="")
         {
            return null;
         }
         return this.kuwa.mavaw.text();
      }

      public function onComplete(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
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