package bolihe
{
   import kyco.Nun;
   import flash.utils.Dictionary;
   import kyco.Jugiwuly;
   import flash.utils.getQualifiedClassName;
   import veb.SsInternal;
   import jyqiqagog.Wubelet;
   import jyqiqagog.Nytiq;


   public class Raki extends Object implements Cuwively
   {
      public function Raki(param1:Class, param2:Nun) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super();
         this.tofohy=param1;
         this.sileve=param2;
         return;
      }

      private var tofohy:Class;

      private var sileve:Nun;

      private var calamagom:Object;

      private var mimat:Boolean;

      public function apply(param1:Class, param2:Nun, param3:Dictionary) : Object {
         var _loc5_:* = true;
         var _loc6_:* = false;
         return this.calamagom=(this.calamagom)||(this.kaqig(this.sileve));
      }

      private function kaqig(param1:Nun) : Object {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(this.mimat)
         {
            throw new Jugiwuly("Forbidden usage of unmapped singleton provider for type "+getQualifiedClassName(this.tofohy));
         }
         else
         {
            return param1.SsInternal::runak(this.tofohy);
         }
      }

      public function destroy() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.mimat=true;
         if(!this.calamagom)
         {
            return;
         }
         var _loc1_:Wubelet = this.sileve.vohosop(this.tofohy);
         var _loc2_:Nytiq = _loc1_.lymatudo;
         while(_loc2_)
         {
            _loc2_.applyInjection(this.calamagom,this.tofohy,this.sileve);
            _loc2_=Nytiq(_loc2_.next);
         }
         this.calamagom=null;
         return;
      }
   }

}