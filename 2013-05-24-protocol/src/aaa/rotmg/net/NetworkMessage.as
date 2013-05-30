package aaa.rotmg.net
{
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;


   public class NetworkMessage extends Object
   {
      public function NetworkMessage(param1:uint, param2:Function=null) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super();
         this.id=param1;
         this.binofygy=!(param2==null);
         this.callback=param2;
         return;
      }

      public var pool:Vavoh;

      public var wacumod:NetworkMessage;

      public var next:NetworkMessage;

      private var binofygy:Boolean;

      public var id:uint;

      public var callback:Function;

      public function parseFromInput(param1:IDataInput) : void {
         return;
      }

      public function writeToOutput(param1:IDataOutput) : void {
         return;
      }

      public function toString() : String {
         return this.formatToString("MESSAGE","id");
      }

      protected function formatToString(param1:String, ... rest) : String {
         var _loc3_:String = "["+param1;
         var _loc4_:* = 0;
         while(_loc4_<rest.length)
         {
            _loc3_=_loc3_+(" "+rest[_loc4_]+"=\""+this[rest[_loc4_]]+"\"");
            _loc4_++;
         }
         _loc3_=_loc3_+"]";
         return _loc3_;
      }

      public function consume() : void {
         this.wacumod=null;
         this.next=null;
         this.pool.append(this);
         return;
      }
   }

}