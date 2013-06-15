package wipivyv
{
   import flash.utils.IDataInput;


   public class Pacusenyt extends Tezypama
   {
      public function Pacusenyt(param1:uint, param2:Function) {
         var _loc3_:* = true;
         var _loc4_:* = false;
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

}