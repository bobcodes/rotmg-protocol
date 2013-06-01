package tuzopite
{
[CLASS1136]   import tysenyzy.Command;
   import setuv.Vityvu;
   import haqakel.Mykob;
   import setuv.Tufyz;
   import totuhare.Zufi;
   import com.company.assembleegameclient.parameters.Parameters;


   public class Zet extends Command
   {
      public function Zet() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var ketodehel:Vityvu;

      public var sur:Mykob;

      public var vopem:Lyzepemif;

      public var model:Tufyz;

      override public function execute() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.vilos();
         this.beton();
         this.model.zecukazu(this.ketodehel);
         this.vopem.dispatch(this.ketodehel);
         return;
      }

      private function beton() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Zufi = null;
         var _loc2_:String = null;
         if(this.ketodehel.name.length>0&&this.ketodehel.name.charAt(0)=="#")
         {
            _loc1_=new Zufi().setParams(this.ketodehel.name.substr(1,this.ketodehel.name.length-1),this.ketodehel.tokens);
            _loc1_.suhuvy(this.sur.qobijav());
            _loc2_=_loc1_.getString();
            this.ketodehel.name=_loc2_?"#"+_loc2_:this.ketodehel.name;
         }
         return;
      }

      private function vilos() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.ketodehel.name==Parameters.pyha||this.ketodehel.name==Parameters.lujujy||this.ketodehel.name==Parameters.timepimow||this.ketodehel.name==Parameters.pilyniges||this.ketodehel.name.charAt(0)=="#")
         {
            this.toveqy();
         }
         return;
      }

      public function toveqy() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:Zufi = new Zufi().setParams(this.ketodehel.text,this.ketodehel.tokens);
         _loc1_.suhuvy(this.sur.qobijav());
         var _loc2_:String = _loc1_.getString();
         this.ketodehel.text=_loc2_?_loc2_:this.ketodehel.text;
         return;
      }
   }
[/CLASS]
}