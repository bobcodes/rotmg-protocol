package pepyca
{
   import flash.geom.Rectangle;
   import __AS3__.vec.Vector;


   public class Fifu extends Object
   {
      public function Fifu() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.nycyd=new Vector.<Depagy>();
         super();
         this.cucivizyw=new Rectangle(0,0,600,300);
         this.qocalopag=20;
         this.lunoh=10;
         this.nazemako=150;
         return;
      }

      public var cucivizyw:Rectangle;

      public var qocalopag:int;

      public var lunoh:int;

      public var nazemako:int;

      public var nycyd:Vector.<Depagy>;

      public function gizibi(param1:Depagy) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.nycyd.push(param1);
         if(this.nycyd.length>this.nazemako)
         {
            this.nycyd.shift();
         }
         return;
      }
   }

}