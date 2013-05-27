package quqe
{
   import flash.display.BitmapData;
   import flash.utils.IDataInput;


   public class Wupeb extends IncomingOnlyNetworkMessage
   {
      public function Wupeb(param1:uint, param2:Function) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super(param1,param2);
         return;
      }

      public var accountId_:int;

      public var charId_:int;

      public var killedBy_:String;

      public var nen:int;

      public var habajoc:int;

      public var zuq:Boolean;

      public var background:BitmapData;

      public function zoqyne() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.background=null;
         return;
      }

      override public function parseFromInput(param1:IDataInput) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.accountId_=param1.readInt();
         this.charId_=param1.readInt();
         this.killedBy_=param1.readUTF();
         this.habajoc=param1.readInt();
         this.nen=param1.readInt();
         this.zuq=!(this.nen==-1);
         return;
      }

      override public function toString() : String {
         return formatToString("DEATH","accountId_","charId_","killedBy_");
      }
   }

}