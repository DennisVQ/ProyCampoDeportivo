package action;

import java.util.List;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;

import com.opensymphony.xwork2.ActionSupport;

import model.ProdVendido;
import model.Producto;
import service.ProductoService;

@ParentPackage("dawi")
public class ProductoAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	List<Producto> lstproductos;
	private Producto producto;
	private int codigo;
	private String nombre;

	public String listar() {

		ProductoService servicio = new ProductoService();

		lstproductos = servicio.listado();
		System.out.println("-- listar -- ");
		if (lstproductos == null) { // validacion
			addActionError("Listado vacío!!");
			return "error";
		} else {
			return "ok";
		}
	}

	
	

	public String procesar() {
		ProductoService servicio = new ProductoService();

		int ok = servicio.registrar(producto);

		if (ok == 0) { // validacion
			addActionError("Error al registrar!!");
			return "error";
		} else {
			addActionMessage("Registro exitoso!!");
			return "ok";
		}
	}

	public List<Producto> getLstproductos() {
		return lstproductos;
	}

	public void setLstproductos(List<Producto> lstproductos) {
		this.lstproductos = lstproductos;
	}

	public Producto getProducto() {
		return producto;
	}

	public void setProducto(Producto producto) {
		this.producto = producto;
	}


	@Action(value="/pasarProd",results={@Result(name="ok",location="/venta.jsp"),
			@Result(name="error",location="/listado2.jsp")})
	
	public String pasar() {
		ProductoService servicio = new ProductoService();
		System.out.println("-- pasar --");
		
		producto = servicio.obtener(codigo, nombre);
		
		if(producto == null){
			addActionError("Error al pasar!!");
			return "error";
		}else{
			addActionMessage("Producto seleccionado con éxito!!");
			return "ok";
		}
		
	}
	
	public int getCodigo() {
		return codigo;
	}

	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	
	/*codigo para venta*/
	private ProdVendido prodVendido;
	
	@Action(value="/compra",results={@Result(name="ok",location="/index.jsp"),
			@Result(name="error",location="/venta.jsp")})
	
	public String comprar() {
		
		ProductoService servicio = new ProductoService();
		
		System.out.println("-- comprando... --");
		
		int ok = servicio.comprar(prodVendido);

		if (ok == 0) {
			addActionError("Error al comprar!!");
			return "error";
		} else {
			addActionMessage("Compra exitosa!!");
			return "ok";
		}
	}

	public ProdVendido getProdVendido() {
		return prodVendido;
	}

	public void setProdVendido(ProdVendido prodVendido) {
		this.prodVendido = prodVendido;
	}	
}
