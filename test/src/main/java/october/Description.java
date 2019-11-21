package october;

import lombok.Data;

import javax.validation.Valid;
import javax.validation.constraints.NotBlank;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-10-11 11:34
 **/
@Data
public class Description {
    @NotBlank(message = "message can not be empty")
    private String message;
    private String tableName;
    private String columnName;

}