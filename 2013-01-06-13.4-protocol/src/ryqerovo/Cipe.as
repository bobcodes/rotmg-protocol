package ryqerovo
{
[CLASS1596]   import fimikibeg.Moceqo;
   import fimikibeg.Nuhylizah;
   import fimikibeg.Gozolus;
   import flash.utils.Dictionary;
   import doganovide.Symyniwe;
   import wufyba.Tyz;
   import fimikibeg.Qebepu;
   import wufyba.Hifo;


   public class Cipe extends Object implements Moceqo, Nuhylizah, Gozolus
   {
      public function Cipe(param1:Symyniwe, param2:Tyz) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super();
         this._matcher=param1;
         this._handler=param2;
         return;
      }

      private const geqas:Dictionary = new Dictionary();

      private var _matcher:Symyniwe;

      private var _handler:Tyz;

      public function sab(param1:Class) : Qebepu {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return (this.besuhebil(param1))||(this.lole(param1));
      }

      public function mygot(param1:Class) : Hifo {
         return this.geqas[param1];
      }

      public function wewytyl(param1:Class) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Hifo = this.geqas[param1];
         delete this.geqas[[param1]];
         this._handler.cove(_loc2_);
         return;
      }

      public function pusud() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:Hifo = null;
         for each (_loc1_ in this.geqas)
         {
            delete this.geqas[[_loc1_.majy]];
            this._handler.cove(_loc1_);
         }
         return;
      }

      private function lole(param1:Class) : Jununypi {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Jununypi = new Jununypi(this._matcher,param1);
         this._handler.malydylo(_loc2_);
         this.geqas[param1]=_loc2_;
         return _loc2_;
      }

      private function besuhebil(param1:Class) : Jununypi {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Jununypi = this.geqas[param1];
         if(_loc2_)
         {
            _loc2_.bejony();
         }
         return _loc2_;
      }
   }
[/CLASS]
}