package tehakab
{
[CLASS770]

   public class Dur extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Dur(param1:Boolean, param2:String, param3:Boolean) {
         var _loc4_:* = true;
         var _loc5_:* = false;
         super();
         this.myso=param1;
         this.padyfy=param3;
         this.name=param2;
         return;
      }

      public static const OWNED:Dur = new Dur(false,"OWNED",false);

      public static const UNLISTED:Dur = new Dur(true,"UNLISTED",false);

      public static const PURCHASABLE:Dur = new Dur(false,"PURCHASABLE",true);

      public static const PURCHASING:Dur = new Dur(true,"PURCHASING",true);

      public static const LOCKED:Dur = new Dur(true,"LOCKED",true);

      public static const NULL:Dur = new Dur(true,"NULL",true);

      private var myso:Boolean;

      private var padyfy:Boolean;

      private var name:String;

      public function bepadetof() : Boolean {
         return this.myso;
      }

      public function nepoqo() : Boolean {
         return this.padyfy;
      }

      public function toString() : String {
         return "[CharacterSkinState {NAME}]".replace("{NAME}",this.name);
      }
   }
[/CLASS]
}