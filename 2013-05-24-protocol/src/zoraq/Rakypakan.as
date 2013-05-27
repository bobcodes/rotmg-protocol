package zoraq
{
   import gag.Fijarih;
   import aaa.rotmg.net.HttpClientWrapper;
   import wegyluke.Hez;
   import fulaw.Vihekivuc;
   import kabam.rotmg.assets.model.Jyzirilof;
   import fulaw.Jimi;
   import fulaw.Dasin;
   import com.company.util.Nyfez;
   import nas.ErrorDialog;


   public class Rakypakan extends Fijarih
   {
      public function Rakypakan() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var client:HttpClientWrapper;

      public var naval:Hez;

      public var classes:Vihekivuc;

      public var accountId:int;

      public var charId:int;

      public var xml:XML;

      public var name:String;

      public var level:int;

      public var type:int;

      public var kuh:String;

      public var killer:String;

      public var nafydysi:int;

      public var ladewavaq:Jyzirilof;

      public var texture1:int;

      public var texture2:int;

      override protected function startTask() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.ranulo();
         return;
      }

      private function ranulo() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.client.fug(3);
         this.client.complete.addOnce(this.onComplete);
         this.client.sendRequest("char/fame",this.luqypiso());
         return;
      }

      private function luqypiso() : Object {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Object = {};
         _loc1_.accountId=this.accountId;
         _loc1_.charId=this.accountId==-1?-1:this.charId;
         return _loc1_;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(param1)
         {
            this.vakyhoful(param2);
         }
         else
         {
            this.qoz(param2);
         }
         return;
      }

      private function vakyhoful(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.xml=new XML(param1);
         this.mewez();
         syjavimu(true);
         return;
      }

      private function mewez() : void {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var charXml:XML = null;
         var char:Jimi = null;
         var skin:Dasin = null;
         for each (_loc6_ in this.xml.Char)
         {
            with(_loc6_)
            {
               
               if(@id==charId)
               {
                  _loc2_[_loc3_]=_loc5_;
               }
            }
         }
         charXml=_loc2_[0];
         this.name=charXml.Account.Name;
         this.level=charXml.Level;
         this.type=charXml.ObjectType;
         this.kuh=this.pudozi();
         this.killer=(this.xml.KilledBy)||"";
         this.nafydysi=this.xml.TotalFame;
         char=this.classes.lyt(charXml.ObjectType);
         skin=charXml.hasOwnProperty("Texture")?char.socucu.sek(charXml.Texture):char.socucu.mucosahuh();
         this.ladewavaq=skin.ladewavaq;
         this.texture1=charXml.hasOwnProperty("Tex1")?charXml.Tex1:0;
         this.texture2=charXml.hasOwnProperty("Tex2")?charXml.Tex2:0;
         return;
      }

      private function pudozi() : String {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:Number = Number(this.xml.CreatedOn)*1000;
         var _loc2_:Date = new Date(_loc1_);
         var _loc3_:Nyfez = new Nyfez();
         _loc3_.zyjususyp="MMMM D, YYYY";
         return _loc3_.mupiqecyn(_loc2_);
      }

      private function qoz(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.naval.dispatch(new ErrorDialog(param1));
         return;
      }
   }

}