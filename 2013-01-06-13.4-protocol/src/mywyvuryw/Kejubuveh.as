package mywyvuryw
{
[CLASS858]   import flash.display.BitmapData;
   import flash.utils.IDataInput;


   public class Kejubuveh extends Daqu
   {
      public function Kejubuveh(param1:uint, param2:Function) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super(param1,param2);
         return;
      }

      public var accountId_:int;

      public var charId_:int;

      public var killedBy_:String;

      public var mupequho:int;

      public var caga:int;

      public var vez:Boolean;

      public var background:BitmapData;

      public function bero() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.background=null;
         return;
      }

      override public function parseFromInput(param1:IDataInput) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.accountId_=param1.readInt();
         this.charId_=param1.readInt();
         this.killedBy_=param1.readUTF();
         this.caga=param1.readInt();
         this.mupequho=param1.readInt();
         this.vez=!(this.mupequho==-1);
         return;
      }

      override public function toString() : String {
         return formatToString("DEATH","accountId_","charId_","killedBy_");
      }
   }
[/CLASS]
}