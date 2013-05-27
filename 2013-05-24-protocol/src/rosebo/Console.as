package rosebo
{
   import potogi.Zuvu;
   import tulunyno.Hugyqufyq;
   import __AS3__.vec.Vector;


   public final class Console extends Object
   {
      public function Console() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.hash=new Hem();
         this.history=new Zizat();
         return;
      }

      private var hash:Hem;

      private var history:Zizat;

      public function register(param1:Zuvu, param2:Hugyqufyq) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.hash.register(param1.name,param1.description,param2);
         return;
      }

      public function wuhow(param1:String) : Boolean {
         return this.hash.nomo(param1);
      }

      public function execute(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.history.add(param1);
         this.hash.execute(param1);
         return;
      }

      public function nezuv() : Vector.<String> {
         return this.hash.nezuv();
      }

      public function cyhiraz() : String {
         return this.history.wuhebef();
      }

      public function vilawipo() : String {
         return this.history.tapu();
      }
   }

}