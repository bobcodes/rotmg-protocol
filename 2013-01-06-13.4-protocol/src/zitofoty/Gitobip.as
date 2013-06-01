package zitofoty
{
[CLASS361]   import tysenyzy.Command;
   import qypupet.Tuhyfutos;
   import qypupet.Dafuhu;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import qypupet.Vuravipyg;


   public class Gitobip extends Command
   {
      public function Gitobip() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var model:Tuhyfutos;

      public var data:XML;

      override public function execute() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.data.Account.hasOwnProperty("PetYardType"))
         {
            this.model.ryhis(this.fytyje());
         }
         if(this.data.hasOwnProperty("Pet"))
         {
            this.model.wuq(this.lyjujokuso());
         }
         return;
      }

      private function fytyje() : int {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:String = Dafuhu.cep(this.data.Account.PetYardType).value;
         var _loc2_:XML = ObjectLibrary.bisera(_loc1_);
         return _loc2_.@type;
      }

      private function lyjujokuso() : Vuravipyg {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:XMLList = this.data.Pet;
         var _loc2_:Vuravipyg = this.model.getPetVO(_loc1_.@instanceId);
         _loc2_.apply(_loc1_[0]);
         return _loc2_;
      }
   }
[/CLASS]
}