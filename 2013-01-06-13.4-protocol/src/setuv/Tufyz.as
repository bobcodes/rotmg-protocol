package setuv
{
[CLASS1135]   import flash.geom.Rectangle;
   import __AS3__.vec.Vector;


   public class Tufyz extends Object
   {
      public function Tufyz() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.ziwe=new Vector.<Vityvu>();
         super();
         this.mykubowob=new Rectangle(0,0,600,300);
         this.dud=20;
         this.puzylata=10;
         this.vyjuhysiv=150;
         return;
      }

      public var mykubowob:Rectangle;

      public var dud:int;

      public var puzylata:int;

      public var vyjuhysiv:int;

      public var ziwe:Vector.<Vityvu>;

      public function zecukazu(param1:Vityvu) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.ziwe.push(param1);
         if(this.ziwe.length>this.vyjuhysiv)
         {
            this.ziwe.shift();
         }
         return;
      }
   }
[/CLASS]
}