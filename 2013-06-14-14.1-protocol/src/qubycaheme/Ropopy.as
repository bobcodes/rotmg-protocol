package qubycaheme
{
   import gycu.Siv;
   import gokyc.Rud;
   import cizagamym.Boquzojul;
   import poho.Kyhy;
   import kabam.rotmg.assets.model.Fip;
   import poho.Dywygave;
   import poho.Pom;
   import com.company.util.Hewu;
   import vysob.ErrorDialog;


   public class Ropopy extends Siv
   {
      public function Ropopy() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var client:Rud;

      public var ridecy:Boquzojul;

      public var classes:Kyhy;

      public var accountId:int;

      public var charId:int;

      public var xml:XML;

      public var name:String;

      public var level:int;

      public var type:int;

      public var bodin:String;

      public var killer:String;

      public var tokanemi:int;

      public var fegotu:Fip;

      public var texture1:int;

      public var texture2:int;

      override protected function startTask() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.fodaqekas();
         return;
      }

      private function fodaqekas() : void {
         var [OFS2]_loc1_:* = [/OFS]true;
         var [OFS3]_loc2_:* = [/OFS]false;
         this.[OFS7]client[/OFS].[OFS12]kesanij[/OFS][OFS12]([/OFS][OFS10]3[/OFS][OFS12])[/OFS];
         this.[OFS17]client[/OFS].[OFS20]complete[/OFS].[OFS27]addOnce[/OFS][OFS27]([/OFS]this.[OFS24]onComplete[/OFS][OFS27])[/OFS];
         this.[OFS31]client[/OFS].[OFS42]sendRequest[/OFS][OFS42]([/OFS][OFS34]"char/fame"[/OFS][OFS42],[/OFS]this.[OFS38]qolokyf[/OFS][OFS38]([/OFS][OFS38])[/OFS][OFS42])[/OFS];
         [OFS46]return[/OFS];
      }

      private function qolokyf() : Object {
         var _loc2_:* = false;
         var _loc3_:* = true;
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
            this.ledefig(param2);
         }
         else
         {
            this.kyn(param2);
         }
         return;
      }

      private function ledefig(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.xml=new XML(param1);
         this.gyhujecys();
         dom(true);
         return;
      }

      private function gyhujecys() : void {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var charXml:XML = null;
         var char:Dywygave = null;
         var skin:Pom = null;
         charXml=this.xml.Char.(@id==charId)[0];
         this.name=charXml.Account.Name;
         this.level=charXml.Level;
         this.type=charXml.ObjectType;
         this.bodin=this.sacinu();
         this.killer=(this.xml.KilledBy)||"";
         this.tokanemi=this.xml.TotalFame;
         char=this.classes.gug(charXml.ObjectType);
         skin=charXml.hasOwnProperty("Texture")?char.sybiwu.vobydozid(charXml.Texture):char.sybiwu.syret();
         this.fegotu=skin.fegotu;
         this.texture1=charXml.hasOwnProperty("Tex1")?charXml.Tex1:0;
         this.texture2=charXml.hasOwnProperty("Tex2")?charXml.Tex2:0;
         return;
      }

      private function sacinu() : String {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:Number = Number(this.xml.CreatedOn)*1000;
         var _loc2_:Date = new Date(_loc1_);
         var _loc3_:Hewu = new Hewu();
         _loc3_.subukiruh="MMMM D, YYYY";
         return _loc3_.qyhakimis(_loc2_);
      }

      private function kyn(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.ridecy.dispatch(new ErrorDialog(param1));
         return;
      }
   }

}