package dovuz
{
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;


   public class Qamyro extends Object
   {
      public function Qamyro(param1:uint, param2:Function=null) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super();
         this.id=param1;
         this.fova=!(param2==null);
         this.callback=param2;
         return;
      }

      public var pool:Nuty;

      public var meqyfubyw:Qamyro;

      public var next:Qamyro;

      private var fova:Boolean;

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
         var _loc5_:* = false;
         var _loc6_:* = true;
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
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.meqyfubyw=null;
         this.next=null;
         this.pool.append(this);
         return;
      }
   }

}