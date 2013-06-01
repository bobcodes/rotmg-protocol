package mywyvuryw
{
[CLASS1472]   import flash.utils.IDataInput;


   public class Fokecak extends Daqu
   {
      public function Fokecak(param1:uint, param2:Function) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super(param1,param2);
         return;
      }

      public var success_:Boolean;

      public var errorText_:String;

      override public function parseFromInput(param1:IDataInput) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.success_=param1.readBoolean();
         this.errorText_=param1.readUTF();
         return;
      }

      override public function toString() : String {
         return formatToString("NAMERESULT","success_","errorText_");
      }
   }
[/CLASS]
}