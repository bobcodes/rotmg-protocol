package fanij
{


   public class Mitat extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Mitat() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public static const LEFT:String = "leftSide";

      public static const RIGHT:String = "rightSide";

      public var baluq:Cun;

      public var puc:int = -1;

      public var ticowob:Cun;

      public var mypu:int = -1;

      public var bykano:int = -1;

      public var caller:Class;

      public var selected:String;

      public function clear() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.caller=null;
         this.baluq=null;
         this.puc=-1;
         this.ticowob=null;
         this.mypu=-1;
         this.bykano=-1;
         return;
      }

      public function gobodif() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return !(this.bykano==-1)&&!(this.mypu==-1)&&!(this.puc==-1)&&!(this.baluq==null);
      }

      public function remytyto() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return !(this.ticowob==null)&&!(this.baluq==null);
      }
   }

}