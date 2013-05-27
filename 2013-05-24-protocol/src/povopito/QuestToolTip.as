package povopito
{
   import movimet.Lufub;
   import com.company.assembleegameclient.ui.Ses;
   import com.company.assembleegameclient.objects.GameObject;
   import nec.Sire;
   import aaa.rotmg.i18n.I18nKeys;
   import flash.filters.DropShadowFilter;


   public class QuestToolTip extends Ryduwi
   {
      public function QuestToolTip(param1:GameObject) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super(6036765,1,16549442,1,false);
         this.text_=new Lufub().setSize(22).setColor(16549442).setBold(true);
         this.text_.setStringBuilder(new Sire().setParams(I18nKeys.rolufygo));
         this.text_.filters=[new DropShadowFilter(0,0,0)];
         this.text_.x=0;
         this.text_.y=0;
         jiguvovu.push(this.text_.textChanged);
         addChild(this.text_);
         this.lafu=new Ses(11776947,true,param1);
         this.lafu.x=0;
         this.lafu.y=32;
         jiguvovu.push(this.lafu.meko);
         addChild(this.lafu);
         filters=[];
         return;
      }

      private var text_:Lufub;

      public var lafu:Ses;
   }

}