package fadowu
{
[CLASS1424]   import flash.utils.IDataOutput;


   public class Create extends Jelo
   {
      public function Create(param1:uint, param2:Function) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super(param1,param2);
         return;
      }

      public var classType:int;

      public var skinType:int;

      override public function writeToOutput(param1:IDataOutput) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         param1.writeShort(this.classType);
         param1.writeShort(this.skinType);
         return;
      }

      override public function toString() : String {
         return formatToString("CREATE","classType");
      }
   }
[/CLASS]
}