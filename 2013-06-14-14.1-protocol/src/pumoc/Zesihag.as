package pumoc
{
   import flash.geom.Rectangle;
   import __AS3__.vec.Vector;


   public class Zesihag extends Object
   {
      public function Zesihag() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.femis=new Vector.<Juc>();
         super();
         this.nabo=new Rectangle(0,0,600,300);
         this.vupute=20;
         this.bisyvy=10;
         this.mivil=150;
         return;
      }

      public var nabo:Rectangle;

      public var vupute:int;

      public var bisyvy:int;

      public var mivil:int;

      public var femis:Vector.<Juc>;

      public function zolupi(param1:Juc) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.femis.push(param1);
         if(this.femis.length>this.mivil)
         {
            this.femis.shift();
         }
         return;
      }
   }

}