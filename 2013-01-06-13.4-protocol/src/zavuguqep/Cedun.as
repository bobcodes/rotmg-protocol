package zavuguqep
{
[CLASS486]   import tysenyzy.Zovisis;
   import warude.Siqohi;
   import dylaqezo.Buzykoga;
   import qypupet.Tuhyfutos;
   import com.company.assembleegameclient.objects.Gofa;
   import com.company.assembleegameclient.objects.Pet;


   public class Cedun extends Zovisis
   {
      public function Cedun() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:Siqohi;

      public var fabemus:Buzykoga;

      public var lycufasoc:Tuhyfutos;

      private var meqo:Gofa;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.zytiqyd=this.dunuvac;
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super.destroy();
         return;
      }

      public function dunuvac() : Gofa {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.nozyr())
         {
            this.meqo=this.fabemus.wavicu;
         }
         return this.meqo;
      }

      private function nozyr() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return this.fabemus.wavicu is Pet?this.tegup():true;
      }

      private function tegup() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!this.meqo&&(this.pagavy()))
         {
            return true;
         }
         if(this.meqo is Pet&&(this.pagavy())&&!(Pet(this.fabemus.wavicu).wakutehe.lecafis()==Pet(this.meqo).wakutehe.lecafis()))
         {
            return true;
         }
         return false;
      }

      private function pagavy() : Boolean {
         return this.lycufasoc.pagavy(this.view.gs_.map);
      }
   }
[/CLASS]
}