package pujo
{
   import qov.Command;
   import zoroc.Gecezyw;
   import fom.Hepeg;
   import wegyluke.Hez;
   import fidymu.Gizasigul;
   import zoroc.Fywisiku;
   import com.company.assembleegameclient.objects.ObjectLibrary;


   public class Necijic extends Command
   {
      public function Necijic() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var type:int;

      public var gimyliq:Gecezyw;

      public var ruhakony:Hepeg;

      public var naval:Hez;

      override public function execute() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.gimyliq.mujebeg(this.bicabyf());
         this.naval.dispatch(new Gizasigul(this.ruhakony.qizys));
         return;
      }

      private function bicabyf() : int {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:String = Fywisiku.kyj(this.type).value;
         return ObjectLibrary.faviqykef(_loc1_).@type;
      }
   }

}