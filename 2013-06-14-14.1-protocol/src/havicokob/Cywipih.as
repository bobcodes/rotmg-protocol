package havicokob
{
   import tytojonib.Command;
   import fanij.Namejaja;
   import fanij.Woho;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import fanij.Cun;


   public class Cywipih extends Command
   {
      public function Cywipih() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var model:Namejaja;

      public var data:XML;

      override public function execute() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.data.Account.hasOwnProperty("PetYardType"))
         {
            this.model.kihabot(this.pus());
         }
         if(this.data.hasOwnProperty("Pet"))
         {
            this.model.duqugyc(this.hatopaj());
         }
         return;
      }

      private function pus() : int {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:String = Woho.naryq(this.data.Account.PetYardType).value;
         var _loc2_:XML = ObjectLibrary.jesycegoc(_loc1_);
         return _loc2_.@type;
      }

      private function hatopaj() : Cun {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:XMLList = this.data.Pet;
         var _loc2_:Cun = this.model.getPetVO(_loc1_.@instanceId);
         _loc2_.apply(_loc1_[0]);
         return _loc2_;
      }
   }

}