package fulaw
{


   public class Wuduler extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Wuduler(param1:Boolean, param2:String, param3:Boolean) {
         var _loc4_:* = true;
         var _loc5_:* = false;
         super();
         this.bag=param1;
         this.wukalasug=param3;
         this.name=param2;
         return;
      }

      public static const OWNED:Wuduler = new Wuduler(false,"OWNED",false);

      public static const UNLISTED:Wuduler = new Wuduler(true,"UNLISTED",false);

      public static const PURCHASABLE:Wuduler = new Wuduler(false,"PURCHASABLE",true);

      public static const PURCHASING:Wuduler = new Wuduler(true,"PURCHASING",true);

      public static const LOCKED:Wuduler = new Wuduler(true,"LOCKED",true);

      public static const NULL:Wuduler = new Wuduler(true,"NULL",true);

      private var bag:Boolean;

      private var wukalasug:Boolean;

      private var name:String;

      public function cunu() : Boolean {
         return this.bag;
      }

      public function bujoboho() : Boolean {
         return this.wukalasug;
      }

      public function toString() : String {
         return "[CharacterSkinState {NAME}]".replace("{NAME}",this.name);
      }
   }

}