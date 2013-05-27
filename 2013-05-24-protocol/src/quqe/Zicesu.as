package quqe
{
   import cypujavop.Wakudava;
   import flash.utils.IDataInput;


   public class Zicesu extends IncomingOnlyNetworkMessage
   {
      public function Zicesu(param1:uint, param2:Function) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.pos_=new Wakudava();
         super(param1,param2);
         return;
      }

      public var objectId_:int;

      public var pos_:Wakudava;

      override public function parseFromInput(param1:IDataInput) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.objectId_=param1.readInt();
         this.pos_.parseFromInput(param1);
         return;
      }

      override public function toString() : String {
         return formatToString("GOTO","objectId_","pos_");
      }
   }

}