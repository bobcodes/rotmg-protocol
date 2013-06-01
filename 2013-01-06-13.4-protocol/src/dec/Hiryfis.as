package dec
{
[CLASS1644]   import flash.display.Sprite;
   import __AS3__.vec.Vector;
   import com.company.util.IntPoint;
   import flash.display.Shape;
   import flash.events.Event;
   import flash.display.Graphics;


   public class Hiryfis extends Sprite
   {
      public function Hiryfis(param1:Vector.<IntPoint>, param2:String) {
         var _loc4_:* = true;
         var _loc5_:* = false;
         super();
         this.tiles_=param1;
         this.nykezyhac=new Shape();
         var _loc3_:Graphics = this.nykezyhac.graphics;
         _loc3_.clear();
         _loc3_.beginFill(0,0.8);
         _loc3_.drawRect(0,0,800,600);
         _loc3_.endFill();
         addChild(this.nykezyhac);
         this.mowufed=new Jahuqed(param2);
         this.mowufed.addEventListener(Event.COMPLETE,this.onComplete);
         this.mowufed.addEventListener(Event.CANCEL,this.onCancel);
         addChild(this.mowufed);
         return;
      }

      public var tiles_:Vector.<IntPoint>;

      private var nykezyhac:Shape;

      private var mowufed:Jahuqed;

      public function togiwy() : String {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.mowufed.jot.text()=="")
         {
            return null;
         }
         return this.mowufed.jot.text();
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
[/CLASS]
}