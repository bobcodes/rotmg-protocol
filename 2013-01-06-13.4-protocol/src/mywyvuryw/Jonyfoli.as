package mywyvuryw
{
[CLASS1425]   import flash.utils.IDataInput;


   public class Jonyfoli extends Daqu
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Jonyfoli(param1:uint, param2:Function) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super(param1,param2);
         return;
      }

      public static const gidewu:int = 0;

      public static const lon:int = 1;

      public var code_:int;

      public var description_:String;

      override public function parseFromInput(param1:IDataInput) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.code_=param1.readInt();
         this.description_=param1.readUTF();
         return;
      }

      override public function toString() : String {
         return formatToString("TRADEDONE","code_","description_");
      }
   }
[/CLASS]
}