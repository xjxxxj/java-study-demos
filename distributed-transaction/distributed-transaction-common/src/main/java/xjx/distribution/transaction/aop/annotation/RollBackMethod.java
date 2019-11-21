package xjx.distribution.transaction.aop.annotation;

import java.lang.annotation.*;

@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
@Inherited
public @interface RollBackMethod {

    String value();

    String url() default "";

}
