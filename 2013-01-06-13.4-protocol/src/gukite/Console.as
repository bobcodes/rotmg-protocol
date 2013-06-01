package gukite
{
[CLASS1345]   import zaw.Lynu;
   import tinava.Dab;
   import __AS3__.vec.Vector;


   public final class Console extends Object
   {
      public function Console() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.hash=new Vahyfe();
         this.history=new Bygusaka();
         return;
      }

      private var hash:Vahyfe;

      private var history:Bygusaka;

      public function register(param1:Lynu, param2:Dab) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.hash.register(param1.name,param1.description,param2);
         return;
      }

      public function wobyli(param1:String) : Boolean {
         return this.hash.kynig(param1);
      }

      public function execute(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.history.add(param1);
         this.hash.execute(param1);
         return;
      }

      public function tyhumusak() : Vector.<String> {
         return this.hash.tyhumusak();
      }

      public function fik() : String {
         return this.history.qeg();
      }

      public function negezi() : String {
         return this.history.vugireced();
      }
   }
[/CLASS]
}