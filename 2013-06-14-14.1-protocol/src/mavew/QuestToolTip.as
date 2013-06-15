package mavew
{
   import hivysif.Guzowoja;
   import com.company.assembleegameclient.ui.Nyre;
   import com.company.assembleegameclient.objects.GameObject;
   import jediwip.Kybidu;
   import komi.Vibemod;
   import flash.filters.DropShadowFilter;


   public class QuestToolTip extends Qyryl
   {
      public function QuestToolTip(param1:GameObject) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super(6036765,1,16549442,1,false);
         this.text_=new Guzowoja().setSize(22).setColor(16549442).setBold(true);
         this.text_.setStringBuilder(new Kybidu().setParams(Vibemod.bako));
         this.text_.filters=[new DropShadowFilter(0,0,0)];
         this.text_.x=0;
         this.text_.y=0;
         ryfoc.push(this.text_.textChanged);
         addChild(this.text_);
         this.miqolor=new Nyre(11776947,true,param1);
         this.miqolor.x=0;
         this.miqolor.y=32;
         ryfoc.push(this.miqolor.gujy);
         addChild(this.miqolor);
         filters=[];
         return;
      }

      private var text_:Guzowoja;

      public var miqolor:Nyre;
   }

}