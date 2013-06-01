package mywyvuryw
{
[CLASS1439]   import flash.utils.IDataInput;


   public class Typec extends Daqu
   {
      public function Typec(param1:uint, param2:Function) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super(param1,param2);
         return;
      }

      public var success_:Boolean;

      public var lineBuilderJSON:String;

      override public function parseFromInput(param1:IDataInput) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.success_=param1.readBoolean();
         this.lineBuilderJSON=param1.readUTF();
         return;
      }

      override public function toString() : String {
         return formatToString("CREATEGUILDRESULT","success_","lineBuilderJSON");
      }
   }
[/CLASS]
}