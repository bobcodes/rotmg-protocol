package wipivyv
{
   import flash.utils.IDataInput;


   public class File extends Tezypama
   {
      public function File(param1:uint, param2:Function) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super(param1,param2);
         return;
      }

      public var filename_:String;

      public var file_:String;

      override public function parseFromInput(param1:IDataInput) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.filename_=param1.readUTF();
         var _loc2_:int = param1.readInt();
         this.file_=param1.readUTFBytes(_loc2_);
         return;
      }

      override public function toString() : String {
         return formatToString("CLIENTSTAT","filename_","file_");
      }
   }

}