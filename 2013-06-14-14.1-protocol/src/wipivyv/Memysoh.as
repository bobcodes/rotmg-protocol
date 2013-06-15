package wipivyv
{
   import flash.display.BitmapData;
   import flash.utils.IDataInput;


   public class Memysoh extends Tezypama
   {
      public function Memysoh(param1:uint, param2:Function) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super(param1,param2);
         return;
      }

      public var accountId_:int;

      public var charId_:int;

      public var killedBy_:String;

      public var tubuduqyl:int;

      public var togo:int;

      public var nequfiv:Boolean;

      public var background:BitmapData;

      public function ricamok() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.background=null;
         return;
      }

      override public function parseFromInput(param1:IDataInput) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.accountId_=param1.readInt();
         this.charId_=param1.readInt();
         this.killedBy_=param1.readUTF();
         this.togo=param1.readInt();
         this.tubuduqyl=param1.readInt();
         this.nequfiv=!(this.tubuduqyl==-1);
         return;
      }

      override public function toString() : String {
         return formatToString("DEATH","accountId_","charId_","killedBy_");
      }
   }

}