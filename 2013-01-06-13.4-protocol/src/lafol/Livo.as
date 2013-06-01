package lafol
{
[CLASS1557]   import zun.Zagidowor;
   import pogefeqeh.Wahovy;


   public class Livo extends Object implements Zagidowor
   {
      public function Livo() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private var viqelo:Wahovy;

      private var vyt:Class;

      private var handler:Object;

      public function setType(param1:Class) : Livo {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.vyt=param1;
         return this;
      }

      public function setInjector(param1:Wahovy) : Livo {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.viqelo=param1;
         return this;
      }

      public function getMethod() : Function {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return this.handler?this.handler.execute:this.kal();
      }

      private function kal() : Function {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!this.vyt)
         {
            return null;
         }
         this.handler=this.viqelo.getInstance(this.vyt);
         return this.handler.execute;
      }
   }
[/CLASS]
}