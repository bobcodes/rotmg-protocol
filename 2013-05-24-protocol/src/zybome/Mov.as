package zybome
{
   import qov.Command;
   import zoroc.Gecezyw;
   import zoroc.Fywisiku;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import zoroc.Bezuco;


   public class Mov extends Command
   {
      public function Mov() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var model:Gecezyw;

      public var data:XML;

      override public function execute() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.data.Account.hasOwnProperty("PetYardType"))
         {
            this.model.mujebeg(this.veryjes());
         }
         if(this.data.hasOwnProperty("Pet"))
         {
            this.model.qoqycofy(this.solojupik());
         }
         return;
      }

      private function veryjes() : int {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:String = Fywisiku.kyj(this.data.Account.PetYardType).value;
         var _loc2_:XML = ObjectLibrary.faviqykef(_loc1_);
         return _loc2_.@type;
      }

      private function solojupik() : Bezuco {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:XMLList = this.data.Pet;
         var _loc2_:Bezuco = this.model.getPetVO(_loc1_.@instanceId);
         _loc2_.apply(_loc1_[0]);
         return _loc2_;
      }
   }

}