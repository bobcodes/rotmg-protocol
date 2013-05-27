package zoroc
{


   public class Taqosohuf extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Taqosohuf() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public static const LEFT:String = "leftSide";

      public static const RIGHT:String = "rightSide";

      public var puda:Bezuco;

      public var beh:int = -1;

      public var wehyte:Bezuco;

      public var vupu:int = -1;

      public var mym:int = -1;

      public var caller:Class;

      public var selected:String;

      public function clear() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.caller=null;
         this.puda=null;
         this.beh=-1;
         this.wehyte=null;
         this.vupu=-1;
         this.mym=-1;
         return;
      }

      public function wiherisuk() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !(this.mym==-1)&&!(this.vupu==-1)&&!(this.beh==-1)&&!(this.puda==null);
      }

      public function donekecip() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !(this.wehyte==null)&&!(this.puda==null);
      }
   }

}