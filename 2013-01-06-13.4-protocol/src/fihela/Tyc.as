package fihela
{
[CLASS600]   import syfuqycy.Gyz;
   import qiwyz.Bozakehy;
   import kirofyny.Hehuf;
   import tehakab.Supuvygac;
   import kabam.rotmg.assets.model.Kybepujyf;
   import tehakab.Cusifyha;
   import tehakab.Copaqufiv;
   import com.company.util.Qewo;
   import cejyva.ErrorDialog;


   public class Tyc extends Gyz
   {
      public function Tyc() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var client:Bozakehy;

      public var lyhog:Hehuf;

      public var classes:Supuvygac;

      public var accountId:int;

      public var charId:int;

      public var xml:XML;

      public var name:String;

      public var level:int;

      public var type:int;

      public var famogogez:String;

      public var killer:String;

      public var qocyti:int;

      public var jaqyb:Kybepujyf;

      public var texture1:int;

      public var texture2:int;

      override protected function startTask() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.jewumi();
         return;
      }

      private function jewumi() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.client.casegyma(3);
         this.client.complete.addOnce(this.onComplete);
         this.client.sendRequest("char/fame",this.humyfub());
         return;
      }

      private function humyfub() : Object {
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
            this.vakago(param2);
         }
         else
         {
            this.byq(param2);
         }
         return;
      }

      private function vakago(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.xml=new XML(param1);
         this.lahero();
         pylebodyq(true);
         return;
      }

      private function lahero() : void {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var charXml:XML = null;
         var char:Cusifyha = null;
         var skin:Copaqufiv = null;
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
         this.famogogez=this.hiwosybeg();
         this.killer=(this.xml.KilledBy)||"";
         this.qocyti=this.xml.TotalFame;
         char=this.classes.waqy(charXml.ObjectType);
         skin=charXml.hasOwnProperty("Texture")?char.pikyremo.vobasyg(charXml.Texture):char.pikyremo.hasemuma();
         this.jaqyb=skin.jaqyb;
         this.texture1=charXml.hasOwnProperty("Tex1")?charXml.Tex1:0;
         this.texture2=charXml.hasOwnProperty("Tex2")?charXml.Tex2:0;
         return;
      }

      private function hiwosybeg() : String {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:Number = Number(this.xml.CreatedOn)*1000;
         var _loc2_:Date = new Date(_loc1_);
         var _loc3_:Qewo = new Qewo();
         _loc3_.jedasiveq="MMMM D, YYYY";
         return _loc3_.difinos(_loc2_);
      }

      private function byq(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.lyhog.dispatch(new ErrorDialog(param1));
         return;
      }
   }
[/CLASS]
}