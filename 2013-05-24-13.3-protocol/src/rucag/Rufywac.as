package rucag
{
   import jypuq.Viqagun;
   import kyco.Nun;


   public class Rufywac extends Object implements Viqagun
   {
      public function Rufywac() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private var cemohoqal:Nun;

      private var votejy:Class;

      private var handler:Object;

      public function setType(param1:Class) : Rufywac {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.votejy=param1;
         return this;
      }

      public function setInjector(param1:Nun) : Rufywac {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.cemohoqal=param1;
         return this;
      }

      public function getMethod() : Function {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return this.handler?this.handler.execute:this.docupik();
      }

      private function docupik() : Function {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!this.votejy)
         {
            return null;
         }
         this.handler=this.cemohoqal.getInstance(this.votejy);
         return this.handler.execute;
      }
   }

}