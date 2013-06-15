package aaa
{
   import __AS3__.vec.Vector;
   import flash.utils.IDataInput;


   public class AccountListAction extends Tezypama
   {
      public function AccountListAction(param1:uint, param2:Function) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.accountIds_=new Vector.<int>();
         super(param1,param2);
         return;
      }

      public var accountListId_:int;

      public var accountIds_:Vector.<int>;

      override public function parseFromInput(param1:IDataInput) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:* = 0;
         this.accountListId_=param1.readInt();
         this.accountIds_.length=0;
         var _loc3_:int = param1.readShort();
         _loc2_=0;
         while(_loc2_<_loc3_)
         {
            this.accountIds_.push(param1.readInt());
            _loc2_++;
         }
         return;
      }

      override public function toString() : String {
         return formatToString("ACCOUNTLIST","accountListId_","accountIds_");
      }
   }

}