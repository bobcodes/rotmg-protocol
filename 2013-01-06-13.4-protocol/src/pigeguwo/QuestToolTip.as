package pigeguwo
{
[CLASS1830]   import pudev.Capitu;
   import com.company.assembleegameclient.ui.Semytuqa;
   import com.company.assembleegameclient.objects.GameObject;
   import totuhare.Zufi;
   import haqakel.Kefyfa;
   import flash.filters.DropShadowFilter;


   public class QuestToolTip extends Jazyv
   {
      public function QuestToolTip(param1:GameObject) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super(6036765,1,16549442,1,false);
         this.text_=new Capitu().setSize(22).setColor(16549442).setBold(true);
         this.text_.setStringBuilder(new Zufi().setParams(Kefyfa.devan));
         this.text_.filters=[new DropShadowFilter(0,0,0)];
         this.text_.x=0;
         this.text_.y=0;
         juwocez.push(this.text_.textChanged);
         addChild(this.text_);
         this.qypygiq=new Semytuqa(11776947,true,param1);
         this.qypygiq.x=0;
         this.qypygiq.y=32;
         juwocez.push(this.qypygiq.femikefu);
         addChild(this.qypygiq);
         filters=[];
         return;
      }

      private var text_:Capitu;

      public var qypygiq:Semytuqa;
   }
[/CLASS]
}