package poho
{


   public class Bul extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Bul(param1:Boolean, param2:String, param3:Boolean) {
         var _loc4_:* = true;
         var _loc5_:* = false;
         super();
         this.midojemi=param1;
         this.ranufupi=param3;
         this.name=param2;
         return;
      }

      public static const OWNED:Bul = new Bul(false,"OWNED",false);

      public static const UNLISTED:Bul = new Bul(true,"UNLISTED",false);

      public static const PURCHASABLE:Bul = new Bul(false,"PURCHASABLE",true);

      public static const PURCHASING:Bul = new Bul(true,"PURCHASING",true);

      public static const LOCKED:Bul = new Bul(true,"LOCKED",true);

      public static const NULL:Bul = new Bul(true,"NULL",true);

      private var midojemi:Boolean;

      private var ranufupi:Boolean;

      private var name:String;

      public function cotaq() : Boolean {
         return this.midojemi;
      }

      public function doli() : Boolean {
         return this.ranufupi;
      }

      public function toString() : String {
         return "[CharacterSkinState {NAME}]".replace("{NAME}",this.name);
      }
   }

}